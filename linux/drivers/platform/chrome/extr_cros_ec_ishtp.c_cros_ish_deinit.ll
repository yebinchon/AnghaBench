; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ish_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ish_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl = type { i32 }

@ISHTP_CL_DISCONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_cl*)* @cros_ish_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cros_ish_deinit(%struct.ishtp_cl* %0) #0 {
  %2 = alloca %struct.ishtp_cl*, align 8
  store %struct.ishtp_cl* %0, %struct.ishtp_cl** %2, align 8
  %3 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  %4 = load i32, i32* @ISHTP_CL_DISCONNECTING, align 4
  %5 = call i32 @ishtp_set_connection_state(%struct.ishtp_cl* %3, i32 %4)
  %6 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  %7 = call i32 @ishtp_cl_disconnect(%struct.ishtp_cl* %6)
  %8 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  %9 = call i32 @ishtp_cl_unlink(%struct.ishtp_cl* %8)
  %10 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  %11 = call i32 @ishtp_cl_flush_queues(%struct.ishtp_cl* %10)
  %12 = load %struct.ishtp_cl*, %struct.ishtp_cl** %2, align 8
  %13 = call i32 @ishtp_cl_free(%struct.ishtp_cl* %12)
  ret void
}

declare dso_local i32 @ishtp_set_connection_state(%struct.ishtp_cl*, i32) #1

declare dso_local i32 @ishtp_cl_disconnect(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_cl_unlink(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_cl_flush_queues(%struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_cl_free(%struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
