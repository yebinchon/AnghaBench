; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_register_partner_altmodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_register_partner_altmodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { %struct.typec_altmode**, i32, %struct.pd_mode_data }
%struct.typec_altmode = type { i32 }
%struct.pd_mode_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to register partner SVID 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*)* @tcpm_register_partner_altmodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_register_partner_altmodes(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  %3 = alloca %struct.pd_mode_data*, align 8
  %4 = alloca %struct.typec_altmode*, align 8
  %5 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %6 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %7 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %6, i32 0, i32 2
  store %struct.pd_mode_data* %7, %struct.pd_mode_data** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %46, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.pd_mode_data*, %struct.pd_mode_data** %3, align 8
  %11 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %16 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.pd_mode_data*, %struct.pd_mode_data** %3, align 8
  %19 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = call %struct.typec_altmode* @typec_partner_register_altmode(i32 %17, %struct.TYPE_2__* %23)
  store %struct.typec_altmode* %24, %struct.typec_altmode** %4, align 8
  %25 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %26 = icmp ne %struct.typec_altmode* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %14
  %28 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %29 = load %struct.pd_mode_data*, %struct.pd_mode_data** %3, align 8
  %30 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tcpm_log(%struct.tcpm_port* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %27, %14
  %39 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %41 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %40, i32 0, i32 0
  %42 = load %struct.typec_altmode**, %struct.typec_altmode*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %42, i64 %44
  store %struct.typec_altmode* %39, %struct.typec_altmode** %45, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %8

49:                                               ; preds = %8
  ret void
}

declare dso_local %struct.typec_altmode* @typec_partner_register_altmode(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
