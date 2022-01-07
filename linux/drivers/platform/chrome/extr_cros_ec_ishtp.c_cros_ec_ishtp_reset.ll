; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ec_ishtp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ec_ishtp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_device = type { i32 }
%struct.ishtp_cl = type { i32 }
%struct.ishtp_cl_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_device*)* @cros_ec_ishtp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_ishtp_reset(%struct.ishtp_cl_device* %0) #0 {
  %2 = alloca %struct.ishtp_cl_device*, align 8
  %3 = alloca %struct.ishtp_cl*, align 8
  %4 = alloca %struct.ishtp_cl_data*, align 8
  store %struct.ishtp_cl_device* %0, %struct.ishtp_cl_device** %2, align 8
  %5 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %6 = call %struct.ishtp_cl* @ishtp_get_drvdata(%struct.ishtp_cl_device* %5)
  store %struct.ishtp_cl* %6, %struct.ishtp_cl** %3, align 8
  %7 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %8 = call %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl* %7)
  store %struct.ishtp_cl_data* %8, %struct.ishtp_cl_data** %4, align 8
  %9 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %4, align 8
  %10 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %9, i32 0, i32 0
  %11 = call i32 @schedule_work(i32* %10)
  ret i32 0
}

declare dso_local %struct.ishtp_cl* @ishtp_get_drvdata(%struct.ishtp_cl_device*) #1

declare dso_local %struct.ishtp_cl_data* @ishtp_get_client_data(%struct.ishtp_cl*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
