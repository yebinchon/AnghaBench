; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_unmap_pciregion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_unmap_pciregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_unmap_pciregion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_unmap_pciregion(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %3 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %4 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %35 [
    i32 132, label %6
    i32 131, label %11
    i32 130, label %20
    i32 129, label %25
    i32 128, label %30
  ]

6:                                                ; preds = %1
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @iounmap(i32 %9)
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %13 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @iounmap(i32 %14)
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %17 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @iounmap(i32 %18)
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %22 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iounmap(i32 %23)
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %27 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iounmap(i32 %28)
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %32 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iounmap(i32 %33)
  br label %35

35:                                               ; preds = %1, %30, %25, %20, %11, %6
  ret void
}

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
