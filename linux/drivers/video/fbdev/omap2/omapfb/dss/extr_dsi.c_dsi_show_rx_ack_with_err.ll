; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_show_rx_ack_with_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_show_rx_ack_with_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"\09ACK with ERROR (%#x):\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\09\09SoT Error\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\09\09SoT Sync Error\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09\09EoT Sync Error\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\09\09Escape Mode Entry Command Error\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\09\09LP Transmit Sync Error\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"\09\09HS Receive Timeout Error\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\09\09False Control Error\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\09\09(reserved7)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\09\09ECC Error, single-bit (corrected)\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\09\09ECC Error, multi-bit (not corrected)\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\09\09Checksum Error\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\09\09Data type not recognized\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\09\09Invalid VC ID\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\09\09Invalid Transmission Length\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\09\09(reserved14)\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"\09\09DSI Protocol Violation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dsi_show_rx_ack_with_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_show_rx_ack_with_err(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, 16
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %2, align 4
  %36 = and i32 %35, 32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %2, align 4
  %42 = and i32 %41, 64
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %2, align 4
  %48 = and i32 %47, 128
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, 256
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %2, align 4
  %60 = and i32 %59, 512
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %2, align 4
  %66 = and i32 %65, 1024
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %2, align 4
  %72 = and i32 %71, 2048
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, i32* %2, align 4
  %78 = and i32 %77, 4096
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* %2, align 4
  %84 = and i32 %83, 8192
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i32, i32* %2, align 4
  %90 = and i32 %89, 16384
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32, i32* %2, align 4
  %96 = and i32 %95, 32768
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %94
  ret void
}

declare dso_local i32 @DSSERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
