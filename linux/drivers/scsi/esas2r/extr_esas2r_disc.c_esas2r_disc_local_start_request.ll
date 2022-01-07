; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_local_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_local_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_disc_local_start_request(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %5 = call i32 (...) @esas2r_trace_enter()
  %6 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %7 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %6, i32 0, i32 0
  %8 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %8, i32 0, i32 0
  %10 = call i32 @list_add_tail(i32* %7, i32* %9)
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %12 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %13 = call i32 @esas2r_start_vda_request(%struct.esas2r_adapter* %11, %struct.esas2r_request* %12)
  %14 = call i32 (...) @esas2r_trace_exit()
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @esas2r_start_vda_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
