; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_svdm_consume_svids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_svdm_consume_svids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { %struct.pd_mode_data }
%struct.pd_mode_data = type { i64, i8** }

@SVID_DISCOVERY_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"SVID %d: 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SVID_DISCOVERY_MAX(%d) too low!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32*, i32)* @svdm_consume_svids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svdm_consume_svids(%struct.tcpm_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpm_port*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pd_mode_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 0
  store %struct.pd_mode_data* %13, %struct.pd_mode_data** %8, align 8
  store i32 1, i32* %9, align 4
  br label %14

14:                                               ; preds = %86, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %89

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 65535
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %94

33:                                               ; preds = %18
  %34 = load %struct.pd_mode_data*, %struct.pd_mode_data** %8, align 8
  %35 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SVID_DISCOVERY_MAX, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %90

40:                                               ; preds = %33
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.pd_mode_data*, %struct.pd_mode_data** %8, align 8
  %43 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load %struct.pd_mode_data*, %struct.pd_mode_data** %8, align 8
  %46 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds i8*, i8** %44, i64 %47
  store i8* %41, i8** %49, align 8
  %50 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %51 = load %struct.pd_mode_data*, %struct.pd_mode_data** %8, align 8
  %52 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 (%struct.tcpm_port*, i8*, i64, ...) @tcpm_log(%struct.tcpm_port* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %53, i8* %54)
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 65535
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %94

63:                                               ; preds = %40
  %64 = load %struct.pd_mode_data*, %struct.pd_mode_data** %8, align 8
  %65 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SVID_DISCOVERY_MAX, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %90

70:                                               ; preds = %63
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.pd_mode_data*, %struct.pd_mode_data** %8, align 8
  %73 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = load %struct.pd_mode_data*, %struct.pd_mode_data** %8, align 8
  %76 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = getelementptr inbounds i8*, i8** %74, i64 %77
  store i8* %71, i8** %79, align 8
  %80 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %81 = load %struct.pd_mode_data*, %struct.pd_mode_data** %8, align 8
  %82 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 (%struct.tcpm_port*, i8*, i64, ...) @tcpm_log(%struct.tcpm_port* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %83, i8* %84)
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %14

89:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %94

90:                                               ; preds = %69, %39
  %91 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %92 = load i64, i64* @SVID_DISCOVERY_MAX, align 8
  %93 = call i32 (%struct.tcpm_port*, i8*, i64, ...) @tcpm_log(%struct.tcpm_port* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %89, %62, %32
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
