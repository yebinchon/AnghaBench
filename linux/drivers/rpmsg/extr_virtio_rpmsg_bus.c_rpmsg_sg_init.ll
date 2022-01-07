; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_sg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_sg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*, i8*, i32)* @rpmsg_sg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpmsg_sg_init(%struct.scatterlist* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @is_vmalloc_addr(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %12 = call i32 @sg_init_table(%struct.scatterlist* %11, i32 1)
  %13 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @vmalloc_to_page(i8* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @offset_in_page(i8* %17)
  %19 = call i32 @sg_set_page(%struct.scatterlist* %13, i32 %15, i32 %16, i32 %18)
  br label %31

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @virt_addr_valid(i8* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @sg_init_one(%struct.scatterlist* %27, i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %20, %10
  ret void
}

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
