; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_create_ptd_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_create_ptd_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_qh = type { i32 }
%struct.isp1760_qtd = type { i32 }
%struct.ptd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_qh*, %struct.isp1760_qtd*, %struct.ptd*)* @create_ptd_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_ptd_int(%struct.isp1760_qh* %0, %struct.isp1760_qtd* %1, %struct.ptd* %2) #0 {
  %4 = alloca %struct.isp1760_qh*, align 8
  %5 = alloca %struct.isp1760_qtd*, align 8
  %6 = alloca %struct.ptd*, align 8
  store %struct.isp1760_qh* %0, %struct.isp1760_qh** %4, align 8
  store %struct.isp1760_qtd* %1, %struct.isp1760_qtd** %5, align 8
  store %struct.ptd* %2, %struct.ptd** %6, align 8
  %7 = load %struct.isp1760_qh*, %struct.isp1760_qh** %4, align 8
  %8 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %9 = load %struct.ptd*, %struct.ptd** %6, align 8
  %10 = call i32 @create_ptd_atl(%struct.isp1760_qh* %7, %struct.isp1760_qtd* %8, %struct.ptd* %9)
  %11 = load %struct.isp1760_qh*, %struct.isp1760_qh** %4, align 8
  %12 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %13 = load %struct.ptd*, %struct.ptd** %6, align 8
  %14 = call i32 @transform_add_int(%struct.isp1760_qh* %11, %struct.isp1760_qtd* %12, %struct.ptd* %13)
  ret void
}

declare dso_local i32 @create_ptd_atl(%struct.isp1760_qh*, %struct.isp1760_qtd*, %struct.ptd*) #1

declare dso_local i32 @transform_add_int(%struct.isp1760_qh*, %struct.isp1760_qtd*, %struct.ptd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
