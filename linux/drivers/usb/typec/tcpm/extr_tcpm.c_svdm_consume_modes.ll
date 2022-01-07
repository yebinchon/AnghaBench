; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_svdm_consume_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_svdm_consume_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, %struct.pd_mode_data }
%struct.pd_mode_data = type { i64, i64, i32*, %struct.typec_altmode_desc* }
%struct.typec_altmode_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c" Alternate mode %d: SVID 0x%04x, VDO %d: 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*, i32*, i32)* @svdm_consume_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svdm_consume_modes(%struct.tcpm_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pd_mode_data*, align 8
  %8 = alloca %struct.typec_altmode_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %11 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %10, i32 0, i32 1
  store %struct.pd_mode_data* %11, %struct.pd_mode_data** %7, align 8
  %12 = load %struct.pd_mode_data*, %struct.pd_mode_data** %7, align 8
  %13 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %16 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ARRAY_SIZE(i32 %17)
  %19 = icmp uge i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %78

21:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %22

22:                                               ; preds = %75, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  %27 = load %struct.pd_mode_data*, %struct.pd_mode_data** %7, align 8
  %28 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %27, i32 0, i32 3
  %29 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %28, align 8
  %30 = load %struct.pd_mode_data*, %struct.pd_mode_data** %7, align 8
  %31 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %29, i64 %32
  store %struct.typec_altmode_desc* %33, %struct.typec_altmode_desc** %8, align 8
  %34 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %8, align 8
  %35 = call i32 @memset(%struct.typec_altmode_desc* %34, i32 0, i32 12)
  %36 = load %struct.pd_mode_data*, %struct.pd_mode_data** %7, align 8
  %37 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.pd_mode_data*, %struct.pd_mode_data** %7, align 8
  %40 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %8, align 8
  %45 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %8, align 8
  %48 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %8, align 8
  %56 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %58 = load %struct.pd_mode_data*, %struct.pd_mode_data** %7, align 8
  %59 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %8, align 8
  %62 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %8, align 8
  %65 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %8, align 8
  %68 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @tcpm_log(%struct.tcpm_port* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %60, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.pd_mode_data*, %struct.pd_mode_data** %7, align 8
  %72 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %26
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %22

78:                                               ; preds = %20, %22
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @memset(%struct.typec_altmode_desc*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
