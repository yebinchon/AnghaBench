; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_tt_no_collision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_tt_no_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, i32*, %union.fotg210_shadow* }
%union.fotg210_shadow = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %union.fotg210_shadow, i32, %struct.fotg210_qh_hw* }
%struct.fotg210_qh_hw = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_3__ = type { %union.fotg210_shadow, i32 }

@.str = private unnamed_addr constant [33 x i8] c"periodic frame %d bogus type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*, i32, %struct.usb_device*, i32, i32)* @tt_no_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_no_collision(%struct.fotg210_hcd* %0, i32 %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fotg210_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.fotg210_shadow, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fotg210_qh_hw*, align 8
  %15 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_device* %2, %struct.usb_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %115

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %110, %19
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %23 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %20
  %27 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %28 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %27, i32 0, i32 2
  %29 = load %union.fotg210_shadow*, %union.fotg210_shadow** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %union.fotg210_shadow, %union.fotg210_shadow* %29, i64 %31
  %33 = bitcast %union.fotg210_shadow* %12 to i8*
  %34 = bitcast %union.fotg210_shadow* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %36 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %37 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %35, i32 %42)
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %92, %52, %26
  %45 = bitcast %union.fotg210_shadow* %12 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %109

48:                                               ; preds = %44
  %49 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @hc32_to_cpu(%struct.fotg210_hcd* %49, i32 %50)
  switch i32 %51, label %103 [
    i32 129, label %52
    i32 128, label %64
  ]

52:                                               ; preds = %48
  %53 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %54 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_3__**
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %53, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_3__**
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = bitcast %union.fotg210_shadow* %12 to i8*
  %63 = bitcast %union.fotg210_shadow* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 8, i1 false)
  br label %44

64:                                               ; preds = %48
  %65 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_4__**
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %67, align 8
  store %struct.fotg210_qh_hw* %68, %struct.fotg210_qh_hw** %14, align 8
  %69 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %70 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_4__**
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @same_tt(%struct.usb_device* %69, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %64
  %77 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %78 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %14, align 8
  %79 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hc32_to_cpu(%struct.fotg210_hcd* %77, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = ashr i32 %82, 8
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %108

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %64
  %93 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %94 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %14, align 8
  %95 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %93, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_4__**
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = bitcast %union.fotg210_shadow* %12 to i8*
  %102 = bitcast %union.fotg210_shadow* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 8, i1 false)
  br label %44

103:                                              ; preds = %48
  %104 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @fotg210_dbg(%struct.fotg210_hcd* %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %90
  store i32 0, i32* %6, align 4
  br label %115

109:                                              ; preds = %44
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %20

114:                                              ; preds = %20
  store i32 1, i32* %6, align 4
  br label %115

115:                                              ; preds = %114, %108, %18
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Q_NEXT_TYPE(%struct.fotg210_hcd*, i32) #2

declare dso_local i32 @hc32_to_cpu(%struct.fotg210_hcd*, i32) #2

declare dso_local i32 @same_tt(%struct.usb_device*, i32) #2

declare dso_local i32 @fotg210_dbg(%struct.fotg210_hcd*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
