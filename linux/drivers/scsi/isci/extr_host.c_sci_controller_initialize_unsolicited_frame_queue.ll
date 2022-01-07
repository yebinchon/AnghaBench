; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_initialize_unsolicited_frame_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_initialize_unsolicited_frame_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@QUEUE_SIZE = common dso_local global i32 0, align 4
@SCU_MAX_UNSOLICITED_FRAMES = common dso_local global i32 0, align 4
@POINTER = common dso_local global i32 0, align 4
@ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*)* @sci_controller_initialize_unsolicited_frame_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_controller_initialize_unsolicited_frame_queue(%struct.isci_host* %0) #0 {
  %2 = alloca %struct.isci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %2, align 8
  %6 = load i32, i32* @QUEUE_SIZE, align 4
  %7 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %8 = call i32 @SCU_UFQC_GEN_VAL(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %11 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = call i32 @writel(i32 %9, i32* %14)
  %16 = load i32, i32* @POINTER, align 4
  %17 = call i32 @SCU_UFQGP_GEN_VAL(i32 %16, i32 0)
  %18 = load i32, i32* @ENABLE_BIT, align 4
  %19 = call i32 @SCU_UFQGP_GEN_BIT(i32 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %23 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @writel(i32 %21, i32* %26)
  %28 = load i32, i32* @POINTER, align 4
  %29 = call i32 @SCU_UFQPP_GEN_VAL(i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %32 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @writel(i32 %30, i32* %35)
  ret void
}

declare dso_local i32 @SCU_UFQC_GEN_VAL(i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @SCU_UFQGP_GEN_VAL(i32, i32) #1

declare dso_local i32 @SCU_UFQGP_GEN_BIT(i32) #1

declare dso_local i32 @SCU_UFQPP_GEN_VAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
