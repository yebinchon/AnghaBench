; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_remove_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_remove_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32, %struct.TYPE_4__*, %struct.bfad_s*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BFAD_MSIX_ON = common dso_local global i32 0, align 4
@BFAD_INTX_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_remove_intr(%struct.bfad_s* %0) #0 {
  %2 = alloca %struct.bfad_s*, align 8
  %3 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %2, align 8
  %4 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @BFAD_MSIX_ON, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %34, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %19 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %18, i32 0, i32 3
  %20 = load %struct.bfad_s*, %struct.bfad_s** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %20, i64 %22
  %24 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %27, i32 0, i32 3
  %29 = load %struct.bfad_s*, %struct.bfad_s** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %29, i64 %31
  %33 = call i32 @free_irq(i32 %26, %struct.bfad_s* %32)
  br label %34

34:                                               ; preds = %17
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %39 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @pci_disable_msix(%struct.TYPE_4__* %40)
  %42 = load i32, i32* @BFAD_MSIX_ON, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %64

48:                                               ; preds = %1
  %49 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %50 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BFAD_INTX_ON, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %57 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %62 = call i32 @free_irq(i32 %60, %struct.bfad_s* %61)
  br label %63

63:                                               ; preds = %55, %48
  br label %64

64:                                               ; preds = %63, %37
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.bfad_s*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
