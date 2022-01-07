; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i64, i32, %struct.slgt_info* }
%struct.slgt_info = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s write count=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s write rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.slgt_info*, align 8
  %10 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 3
  %13 = load %struct.slgt_info*, %struct.slgt_info** %12, align 8
  store %struct.slgt_info* %13, %struct.slgt_info** %9, align 8
  %14 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @sanity_check(%struct.slgt_info* %14, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %103

23:                                               ; preds = %3
  %24 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %25 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DBGINFO(i8* %29)
  %31 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %32 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %38 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %23
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %103

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %54 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47, %44
  store i32 0, i32* %4, align 4
  br label %103

58:                                               ; preds = %52
  %59 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %60 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %59, i32 0, i32 4
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %64 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %58
  %68 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %69 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %70 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @tx_load(%struct.slgt_info* %68, i8* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  br label %90

78:                                               ; preds = %67
  %79 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %80 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %79, i32 0, i32 2
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %58
  %82 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @tx_load(%struct.slgt_info* %82, i8* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %87, %81
  br label %90

90:                                               ; preds = %89, %77
  %91 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %92 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %91, i32 0, i32 4
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.slgt_info*, %struct.slgt_info** %9, align 8
  %96 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @DBGINFO(i8* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %90, %57, %41, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @tx_load(%struct.slgt_info*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
