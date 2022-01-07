; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_msix_s = type { %struct.TYPE_2__, %struct.bfad_s* }
%struct.TYPE_2__ = type { i32 }
%struct.bfad_s = type { i32, i32 }
%struct.list_head = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bfad_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_msix(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfad_msix_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.list_head, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bfad_msix_s*
  store %struct.bfad_msix_s* %10, %struct.bfad_msix_s** %5, align 8
  %11 = load %struct.bfad_msix_s*, %struct.bfad_msix_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfad_msix_s, %struct.bfad_msix_s* %11, i32 0, i32 1
  %13 = load %struct.bfad_s*, %struct.bfad_s** %12, align 8
  store %struct.bfad_s* %13, %struct.bfad_s** %6, align 8
  %14 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %19 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %18, i32 0, i32 1
  %20 = load %struct.bfad_msix_s*, %struct.bfad_msix_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfad_msix_s, %struct.bfad_msix_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bfa_msix(i32* %19, i32 %23)
  %25 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %26 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %25, i32 0, i32 1
  %27 = call i32 @bfa_comp_deq(i32* %26, %struct.list_head* %7)
  %28 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %29 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %28, i32 0, i32 0
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = call i32 @list_empty(%struct.list_head* %7)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %2
  %35 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %36 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %35, i32 0, i32 1
  %37 = call i32 @bfa_comp_process(i32* %36, %struct.list_head* %7)
  %38 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %39 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %43 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %42, i32 0, i32 1
  %44 = call i32 @bfa_comp_free(i32* %43, %struct.list_head* %7)
  %45 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %46 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %34, %2
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_msix(i32*, i32) #1

declare dso_local i32 @bfa_comp_deq(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @bfa_comp_process(i32*, %struct.list_head*) #1

declare dso_local i32 @bfa_comp_free(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
