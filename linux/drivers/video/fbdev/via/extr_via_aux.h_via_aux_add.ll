; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux.h_via_aux_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux.h_via_aux_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_aux_drv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via_aux_drv*)* @via_aux_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_aux_add(%struct.via_aux_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via_aux_drv*, align 8
  %4 = alloca %struct.via_aux_drv*, align 8
  store %struct.via_aux_drv* %0, %struct.via_aux_drv** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.via_aux_drv* @kmalloc(i32 16, i32 %5)
  store %struct.via_aux_drv* %6, %struct.via_aux_drv** %4, align 8
  %7 = load %struct.via_aux_drv*, %struct.via_aux_drv** %4, align 8
  %8 = icmp ne %struct.via_aux_drv* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.via_aux_drv*, %struct.via_aux_drv** %4, align 8
  %12 = load %struct.via_aux_drv*, %struct.via_aux_drv** %3, align 8
  %13 = bitcast %struct.via_aux_drv* %11 to i8*
  %14 = bitcast %struct.via_aux_drv* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = load %struct.via_aux_drv*, %struct.via_aux_drv** %4, align 8
  %16 = getelementptr inbounds %struct.via_aux_drv, %struct.via_aux_drv* %15, i32 0, i32 1
  %17 = load %struct.via_aux_drv*, %struct.via_aux_drv** %4, align 8
  %18 = getelementptr inbounds %struct.via_aux_drv, %struct.via_aux_drv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @list_add_tail(i32* %16, i32* %20)
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %10, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.via_aux_drv* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
