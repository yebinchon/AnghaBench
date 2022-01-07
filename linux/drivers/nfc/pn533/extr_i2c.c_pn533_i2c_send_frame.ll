; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_i2c.c_pn533_i2c_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_i2c.c_pn533_i2c_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { %struct.pn533_i2c_phy* }
%struct.pn533_i2c_phy = type { i64, i32, %struct.pn533*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"PN533_i2c TX: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*, %struct.sk_buff*)* @pn533_i2c_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_i2c_send_frame(%struct.pn533* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pn533*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pn533_i2c_phy*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.pn533*, %struct.pn533** %4, align 8
  %10 = getelementptr inbounds %struct.pn533, %struct.pn533* %9, i32 0, i32 0
  %11 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %10, align 8
  store %struct.pn533_i2c_phy* %11, %struct.pn533_i2c_phy** %6, align 8
  %12 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %13 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %12, i32 0, i32 3
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %16 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %21 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %2
  %25 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %26 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %25, i32 0, i32 2
  %27 = load %struct.pn533*, %struct.pn533** %26, align 8
  %28 = icmp eq %struct.pn533* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.pn533*, %struct.pn533** %4, align 8
  %31 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %32 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %31, i32 0, i32 2
  store %struct.pn533* %30, %struct.pn533** %32, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %35 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36, i32 16, i32 1, i32 %39, i32 %42, i32 0)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i2c_master_send(%struct.i2c_client* %44, i32 %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EREMOTEIO, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %33
  %57 = call i32 @usleep_range(i32 6000, i32 10000)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @i2c_master_send(%struct.i2c_client* %58, i32 %61, i32 %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %56, %33
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EREMOTEIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %79

78:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %75
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %19
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
