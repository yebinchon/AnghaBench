; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd-buf.c_privcmd_buf_vmapriv_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_privcmd-buf.c_privcmd_buf_vmapriv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.privcmd_buf_vma_private = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.privcmd_buf_vma_private*)* @privcmd_buf_vmapriv_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @privcmd_buf_vmapriv_free(%struct.privcmd_buf_vma_private* %0) #0 {
  %2 = alloca %struct.privcmd_buf_vma_private*, align 8
  %3 = alloca i32, align 4
  store %struct.privcmd_buf_vma_private* %0, %struct.privcmd_buf_vma_private** %2, align 8
  %4 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %2, align 8
  %5 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %4, i32 0, i32 2
  %6 = call i32 @list_del(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %2, align 8
  %10 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %2, align 8
  %15 = getelementptr inbounds %struct.privcmd_buf_vma_private, %struct.privcmd_buf_vma_private* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__free_page(i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.privcmd_buf_vma_private*, %struct.privcmd_buf_vma_private** %2, align 8
  %27 = call i32 @kfree(%struct.privcmd_buf_vma_private* %26)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @kfree(%struct.privcmd_buf_vma_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
