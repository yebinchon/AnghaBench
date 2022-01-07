; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_set_container.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_set_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { i64, i32, i32, %struct.vfio_container*, i32 }
%struct.vfio_container = type { i64, i32, i32, i32, %struct.vfio_iommu_driver* }
%struct.vfio_iommu_driver = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.fd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vfio_container*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@vfio_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_group*, i32)* @vfio_group_set_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_group_set_container(%struct.vfio_group* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd, align 8
  %7 = alloca %struct.vfio_container*, align 8
  %8 = alloca %struct.vfio_iommu_driver*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd, align 8
  store %struct.vfio_group* %0, %struct.vfio_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %12 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %11, i32 0, i32 1
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %132

18:                                               ; preds = %2
  %19 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %20 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %25 = call i32 @capable(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %132

30:                                               ; preds = %23, %18
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.TYPE_3__* @fdget(i32 %31)
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %33, align 8
  %34 = bitcast %struct.fd* %6 to i8*
  %35 = bitcast %struct.fd* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @EBADF, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %132

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, @vfio_fops
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @fdput(%struct.TYPE_3__* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %132

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.vfio_container*, %struct.vfio_container** %57, align 8
  store %struct.vfio_container* %58, %struct.vfio_container** %7, align 8
  %59 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %60 = icmp ne %struct.vfio_container* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %65 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %64, i32 0, i32 1
  %66 = call i32 @down_write(i32* %65)
  %67 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %68 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %67, i32 0, i32 2
  %69 = call i32 @list_empty(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %54
  %72 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %73 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %76 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @EPERM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %124

82:                                               ; preds = %71, %54
  %83 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %84 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %83, i32 0, i32 4
  %85 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %84, align 8
  store %struct.vfio_iommu_driver* %85, %struct.vfio_iommu_driver** %8, align 8
  %86 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %8, align 8
  %87 = icmp ne %struct.vfio_iommu_driver* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %8, align 8
  %90 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (i32, i32)*, i32 (i32, i32)** %92, align 8
  %94 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %95 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %98 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %93(i32 %96, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  br label %124

104:                                              ; preds = %88
  br label %105

105:                                              ; preds = %104, %82
  %106 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %107 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %108 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %107, i32 0, i32 3
  store %struct.vfio_container* %106, %struct.vfio_container** %108, align 8
  %109 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %110 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %113 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %115 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %114, i32 0, i32 2
  %116 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %117 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %116, i32 0, i32 2
  %118 = call i32 @list_add(i32* %115, i32* %117)
  %119 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %120 = call i32 @vfio_container_get(%struct.vfio_container* %119)
  %121 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %122 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %121, i32 0, i32 1
  %123 = call i32 @atomic_inc(i32* %122)
  br label %124

124:                                              ; preds = %105, %103, %79
  %125 = load %struct.vfio_container*, %struct.vfio_container** %7, align 8
  %126 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %125, i32 0, i32 1
  %127 = call i32 @up_write(i32* %126)
  %128 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = call i32 @fdput(%struct.TYPE_3__* %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %124, %48, %39, %27, %15
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.TYPE_3__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fdput(%struct.TYPE_3__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @vfio_container_get(%struct.vfio_container*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
