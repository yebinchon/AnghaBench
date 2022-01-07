; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_check_ntb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_check_ntb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Doorbell is unsafe\0A\00", align 1
@unsafe = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Scratchpad is unsafe\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unsupported DB configuration\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Scratchpads and messages unsupported\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Scratchpads unsupported\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Messages unsupported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*)* @pp_check_ntb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_check_ntb(%struct.ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %3, align 8
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %6 = call i64 @ntb_db_is_unsafe(%struct.ntb_dev* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @unsafe, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %81

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %20 = call i64 @ntb_spad_is_unsafe(%struct.ntb_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %24 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @unsafe, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %34 = call i32 @ntb_peer_port_count(%struct.ntb_dev* %33)
  %35 = call i32 @GENMASK_ULL(i32 %34, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %37 = call i32 @ntb_db_valid_mask(%struct.ntb_dev* %36)
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %44 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %81

48:                                               ; preds = %32
  %49 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %50 = call i32 @ntb_spad_count(%struct.ntb_dev* %49)
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %54 = call i32 @ntb_msg_count(%struct.ntb_dev* %53)
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %58 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %81

62:                                               ; preds = %52, %48
  %63 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %64 = call i32 @ntb_spad_count(%struct.ntb_dev* %63)
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %68 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %67, i32 0, i32 0
  %69 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %79

70:                                               ; preds = %62
  %71 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %72 = call i32 @ntb_msg_count(%struct.ntb_dev* %71)
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %76 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %75, i32 0, i32 0
  %77 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %66
  br label %80

80:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %56, %42, %28, %14
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @ntb_db_is_unsafe(%struct.ntb_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @ntb_spad_is_unsafe(%struct.ntb_dev*) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @ntb_peer_port_count(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_db_valid_mask(%struct.ntb_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ntb_spad_count(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_msg_count(%struct.ntb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
