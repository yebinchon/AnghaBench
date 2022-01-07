; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_get_pciids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_get_pciids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_pciid_s = type { i32, i32 }

@bfa_get_pciids.__pciids = internal global [4 x %struct.bfa_pciid_s] [%struct.bfa_pciid_s { i32 128, i32 129 }, %struct.bfa_pciid_s { i32 128, i32 130 }, %struct.bfa_pciid_s { i32 128, i32 132 }, %struct.bfa_pciid_s { i32 128, i32 131 }], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_get_pciids(%struct.bfa_pciid_s** %0, i32* %1) #0 {
  %3 = alloca %struct.bfa_pciid_s**, align 8
  %4 = alloca i32*, align 8
  store %struct.bfa_pciid_s** %0, %struct.bfa_pciid_s*** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.bfa_pciid_s* getelementptr inbounds ([4 x %struct.bfa_pciid_s], [4 x %struct.bfa_pciid_s]* @bfa_get_pciids.__pciids, i64 0, i64 0))
  %6 = load i32*, i32** %4, align 8
  store i32 %5, i32* %6, align 4
  %7 = load %struct.bfa_pciid_s**, %struct.bfa_pciid_s*** %3, align 8
  store %struct.bfa_pciid_s* getelementptr inbounds ([4 x %struct.bfa_pciid_s], [4 x %struct.bfa_pciid_s]* @bfa_get_pciids.__pciids, i64 0, i64 0), %struct.bfa_pciid_s** %7, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.bfa_pciid_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
