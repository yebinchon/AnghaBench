; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_alloc_subchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_alloc_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i8*, %struct.TYPE_4__, i32, i32, %struct.schib, %struct.subchannel_id }
%struct.TYPE_4__ = type { i8**, i8*, i32* }
%struct.schib = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@css_sch_todo = common dso_local global i32 0, align 4
@css_subchannel_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.subchannel* @css_alloc_subchannel(i32 %0, %struct.schib* %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.subchannel_id, align 4
  %5 = alloca %struct.schib*, align 8
  %6 = alloca %struct.subchannel*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  store %struct.schib* %1, %struct.schib** %5, align 8
  %9 = load %struct.schib*, %struct.schib** %5, align 8
  %10 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @css_validate_subchannel(i32 %11, %struct.schib* %9)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.subchannel* @ERR_PTR(i32 %16)
  store %struct.subchannel* %17, %struct.subchannel** %3, align 8
  br label %79

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load i32, i32* @GFP_DMA, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.subchannel* @kzalloc(i32 48, i32 %21)
  store %struct.subchannel* %22, %struct.subchannel** %6, align 8
  %23 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %24 = icmp ne %struct.subchannel* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.subchannel* @ERR_PTR(i32 %27)
  store %struct.subchannel* %28, %struct.subchannel** %3, align 8
  br label %79

29:                                               ; preds = %18
  %30 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %31 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %30, i32 0, i32 5
  %32 = bitcast %struct.subchannel_id* %31 to i8*
  %33 = bitcast %struct.subchannel_id* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 4
  %36 = load %struct.schib*, %struct.schib** %5, align 8
  %37 = bitcast %struct.schib* %35 to i8*
  %38 = bitcast %struct.schib* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.schib*, %struct.schib** %5, align 8
  %40 = getelementptr inbounds %struct.schib, %struct.schib* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %44 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %46 = call i32 @css_sch_create_locks(%struct.subchannel* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  br label %74

50:                                               ; preds = %29
  %51 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %52 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %51, i32 0, i32 2
  %53 = load i32, i32* @css_sch_todo, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %56 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32* @css_subchannel_release, i32** %57, align 8
  %58 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %59 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %58, i32 0, i32 1
  %60 = call i32 @device_initialize(%struct.TYPE_4__* %59)
  %61 = call i8* @DMA_BIT_MASK(i32 31)
  %62 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %63 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = call i8* @DMA_BIT_MASK(i32 64)
  %66 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %67 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %69 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %68, i32 0, i32 0
  %70 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %71 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i8** %69, i8*** %72, align 8
  %73 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  store %struct.subchannel* %73, %struct.subchannel** %3, align 8
  br label %79

74:                                               ; preds = %49
  %75 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %76 = call i32 @kfree(%struct.subchannel* %75)
  %77 = load i32, i32* %7, align 4
  %78 = call %struct.subchannel* @ERR_PTR(i32 %77)
  store %struct.subchannel* %78, %struct.subchannel** %3, align 8
  br label %79

79:                                               ; preds = %74, %50, %25, %15
  %80 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  ret %struct.subchannel* %80
}

declare dso_local i32 @css_validate_subchannel(i32, %struct.schib*) #1

declare dso_local %struct.subchannel* @ERR_PTR(i32) #1

declare dso_local %struct.subchannel* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @css_sch_create_locks(%struct.subchannel*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i8* @DMA_BIT_MASK(i32) #1

declare dso_local i32 @kfree(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
