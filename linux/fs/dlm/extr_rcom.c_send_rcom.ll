; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_send_rcom.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_send_rcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_mhandle = type { i32 }
%struct.dlm_rcom = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*)* @send_rcom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_rcom(%struct.dlm_ls* %0, %struct.dlm_mhandle* %1, %struct.dlm_rcom* %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_mhandle*, align 8
  %6 = alloca %struct.dlm_rcom*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_mhandle* %1, %struct.dlm_mhandle** %5, align 8
  store %struct.dlm_rcom* %2, %struct.dlm_rcom** %6, align 8
  %7 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %8 = call i32 @dlm_rcom_out(%struct.dlm_rcom* %7)
  %9 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %5, align 8
  %10 = call i32 @dlm_lowcomms_commit_buffer(%struct.dlm_mhandle* %9)
  ret void
}

declare dso_local i32 @dlm_rcom_out(%struct.dlm_rcom*) #1

declare dso_local i32 @dlm_lowcomms_commit_buffer(%struct.dlm_mhandle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
