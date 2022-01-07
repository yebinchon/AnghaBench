; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32* }

@vendor_alphascale_asm9260 = common dso_local global i32 0, align 4
@vendor_freescale_stmp37xx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_auart_port*)* @mxs_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_init_regs(%struct.mxs_auart_port* %0) #0 {
  %2 = alloca %struct.mxs_auart_port*, align 8
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %2, align 8
  %3 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %4 = call i64 @is_asm9260_auart(%struct.mxs_auart_port* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %8 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %7, i32 0, i32 0
  store i32* @vendor_alphascale_asm9260, i32** %8, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %11 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %10, i32 0, i32 0
  store i32* @vendor_freescale_stmp37xx, i32** %11, align 8
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

declare dso_local i64 @is_asm9260_auart(%struct.mxs_auart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
