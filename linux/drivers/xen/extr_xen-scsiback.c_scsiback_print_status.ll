; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_print_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_pend = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.scsiback_tpg* }
%struct.scsiback_tpg = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"[%s:%d] cmnd[0]=%02x -> st=%02x msg=%02x host=%02x drv=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.vscsibk_pend*)* @scsiback_print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsiback_print_status(i8* %0, i32 %1, %struct.vscsibk_pend* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vscsibk_pend*, align 8
  %7 = alloca %struct.scsiback_tpg*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vscsibk_pend* %2, %struct.vscsibk_pend** %6, align 8
  %8 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %6, align 8
  %9 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.scsiback_tpg*, %struct.scsiback_tpg** %11, align 8
  store %struct.scsiback_tpg* %12, %struct.scsiback_tpg** %7, align 8
  %13 = load %struct.scsiback_tpg*, %struct.scsiback_tpg** %7, align 8
  %14 = getelementptr inbounds %struct.scsiback_tpg, %struct.scsiback_tpg* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %6, align 8
  %19 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vscsibk_pend*, %struct.vscsibk_pend** %6, align 8
  %24 = getelementptr inbounds %struct.vscsibk_pend, %struct.vscsibk_pend* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @status_byte(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @msg_byte(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @host_byte(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @driver_byte(i32 %34)
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @status_byte(i32) #1

declare dso_local i32 @msg_byte(i32) #1

declare dso_local i32 @host_byte(i32) #1

declare dso_local i32 @driver_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
