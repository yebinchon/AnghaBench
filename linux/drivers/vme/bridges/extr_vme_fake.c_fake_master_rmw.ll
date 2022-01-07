; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_master_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_master_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.fake_driver* }
%struct.fake_driver = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i32, i32, i32, i32)* @fake_master_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_master_rmw(%struct.vme_master_resource* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vme_master_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fake_driver*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %18 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.fake_driver*, %struct.fake_driver** %20, align 8
  store %struct.fake_driver* %21, %struct.fake_driver** %16, align 8
  %22 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %23 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %26 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %34 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %42 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %50 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %49, i32 0, i32 1
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @fake_vmeread32(%struct.fake_driver* %52, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %5
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %5
  %65 = phi i1 [ false, %5 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i1 [ false, %64 ], [ %71, %69 ]
  %74 = zext i1 %73 to i32
  %75 = icmp eq i32 %66, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %78, %79
  %81 = or i32 %77, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %7, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %82, %86
  store i32 %87, i32* %11, align 4
  %88 = load %struct.fake_driver*, %struct.fake_driver** %16, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %89, %90
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @fake_vmewrite32(%struct.fake_driver* %88, i32* %11, i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %76, %72
  %96 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %97 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %96, i32 0, i32 1
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fake_vmeread32(%struct.fake_driver*, i32, i32, i32) #1

declare dso_local i32 @fake_vmewrite32(%struct.fake_driver*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
