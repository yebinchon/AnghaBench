; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spxx_int_pr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spxx_int_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_spxx_int_reg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"SPI%d: SRX Spi4 interface down\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"SPI%d: SRX Spi4 Calendar table parity error\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"SPI%d: SRX Consecutive Spi4 DIP4 errors have exceeded SPX_ERR_CTL[ERRCNT]\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SPI%d: SRX Spi4 DIP4 error\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"SPI%d: SRX Selected port has hit TPA overflow\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"SPI%d: SRX Spi4 reserved control word detected\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"SPI%d: SRX Spi4 receive FIFO drowning/overflow\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"SPI%d: SRX Spi4 packet closed on non-16B alignment without EOP\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"SPI%d: SRX Spi4 async FIFO overflow\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"SPI%d: SRX Abnormal packet termination (ERR bit)\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"SPI%d: SRX Port out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.cvmx_spxx_int_reg*, i32)* @cvm_oct_spxx_int_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_spxx_int_pr(%union.cvmx_spxx_int_reg* byval(%union.cvmx_spxx_int_reg) align 8 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 10
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %59
  %68 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = bitcast %union.cvmx_spxx_int_reg* %0 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %83
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
