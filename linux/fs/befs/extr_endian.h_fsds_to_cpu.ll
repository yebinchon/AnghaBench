; ModuleID = '/home/carl/AnghaBench/linux/fs/befs/extr_endian.h_fsds_to_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/fs/befs/extr_endian.h_fsds_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8** }
%struct.super_block = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32* }

@BEFS_NUM_DIRECT_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.super_block*, %struct.TYPE_5__*)* @fsds_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsds_to_cpu(%struct.TYPE_6__* noalias sret %0, %struct.super_block* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %3
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BEFS_NUM_DIRECT_BLOCKS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @fsrun_to_cpu(%struct.super_block* %12, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8* %20, i8** %25, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @fs64_to_cpu(%struct.super_block* %30, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  store i8* %34, i8** %35, align 8
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @fsrun_to_cpu(%struct.super_block* %36, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  store i8* %40, i8** %41, align 8
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @fs64_to_cpu(%struct.super_block* %42, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i8* %46, i8** %47, align 8
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @fsrun_to_cpu(%struct.super_block* %48, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = load %struct.super_block*, %struct.super_block** %4, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @fs64_to_cpu(%struct.super_block* %54, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @fs64_to_cpu(%struct.super_block* %60, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  ret void
}

declare dso_local i8* @fsrun_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs64_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
