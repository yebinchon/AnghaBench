; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_ptp_qoriq_auto_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_ptp_qoriq_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_qoriq = type { i64, i32, %struct.TYPE_2__, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.clk = type { i32 }

@DEFAULT_CKSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"error reference clock value, or lower than 100MHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DEFAULT_TMR_PRSC = common dso_local global i32 0, align 4
@DEFAULT_FIPER1_PERIOD = common dso_local global i64 0, align 8
@DEFAULT_FIPER2_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptp_qoriq*, %struct.device_node*)* @ptp_qoriq_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptp_qoriq_auto_config(%struct.ptp_qoriq* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptp_qoriq*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ptp_qoriq* %0, %struct.ptp_qoriq** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @DEFAULT_CKSEL, align 4
  %13 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %14 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call %struct.clk* @of_clk_get(%struct.device_node* %15, i32 0)
  store %struct.clk* %16, %struct.clk** %6, align 8
  %17 = load %struct.clk*, %struct.clk** %6, align 8
  %18 = call i32 @IS_ERR(%struct.clk* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.clk*, %struct.clk** %6, align 8
  %22 = call i64 @clk_get_rate(%struct.clk* %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.clk*, %struct.clk** %6, align 8
  %24 = call i32 @clk_put(%struct.clk* %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load i64, i64* %11, align 8
  %27 = icmp ule i64 %26, 100000000
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %90

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @ptp_qoriq_nominal_freq(i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %90

40:                                               ; preds = %32
  %41 = load i64, i64* %9, align 8
  %42 = udiv i64 1000000000, %41
  %43 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %44 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @DEFAULT_TMR_PRSC, align 4
  %46 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %47 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = mul i64 0, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @div_u64_rem(i32 %51, i64 %52, i64* %10)
  store i32 %53, i32* %7, align 4
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %40
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %62 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* @DEFAULT_FIPER1_PERIOD, align 8
  %64 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %65 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %63, %66
  %68 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %69 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* @DEFAULT_FIPER2_PERIOD, align 8
  %71 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %72 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %70, %73
  %75 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %76 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub i64 %77, %78
  %80 = mul i64 1000000000, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @div_u64(i32 %82, i64 %83)
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %88 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %59, %37, %28
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.clk* @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ptp_qoriq_nominal_freq(i64) #1

declare dso_local i32 @div_u64_rem(i32, i64, i64*) #1

declare dso_local i32 @div_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
