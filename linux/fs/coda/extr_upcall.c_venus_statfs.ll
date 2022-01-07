; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_venus_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_venus_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstatfs = type { i32, i32, i32, i32, i32 }
%union.inputArgs = type { i32 }
%union.outputArgs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@statfs = common dso_local global i32 0, align 4
@CODA_STATFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %union.inputArgs*, align 8
  %6 = alloca %union.outputArgs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %10 = load i32, i32* @statfs, align 4
  %11 = call i32 @SIZE(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @CODA_STATFS, align 4
  %13 = call i32 @UPARG(i32 %12)
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @coda_vcp(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load %union.inputArgs*, %union.inputArgs** %5, align 8
  %20 = call i32 @coda_upcall(i32 %17, i32 %18, i32* %8, %union.inputArgs* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %2
  %24 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %25 = bitcast %union.outputArgs* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %30 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %32 = bitcast %union.outputArgs* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %37 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %39 = bitcast %union.outputArgs* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %46 = bitcast %union.outputArgs* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %union.outputArgs*, %union.outputArgs** %6, align 8
  %53 = bitcast %union.outputArgs* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %58 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %23, %2
  %60 = load %union.inputArgs*, %union.inputArgs** %5, align 8
  %61 = call i32 @kvfree(%union.inputArgs* %60)
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @SIZE(i32) #1

declare dso_local i32 @UPARG(i32) #1

declare dso_local i32 @coda_upcall(i32, i32, i32*, %union.inputArgs*) #1

declare dso_local i32 @coda_vcp(i32) #1

declare dso_local i32 @kvfree(%union.inputArgs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
