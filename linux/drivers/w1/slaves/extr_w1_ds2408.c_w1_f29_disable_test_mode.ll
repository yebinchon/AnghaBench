; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_w1_f29_disable_test_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c_w1_f29_disable_test_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_f29_disable_test_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f29_disable_test_mode(%struct.w1_slave* %0) #0 {
  %2 = alloca %struct.w1_slave*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %2, align 8
  %6 = bitcast [10 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false)
  %7 = bitcast i8* %6 to <{ i32, [9 x i32] }>*
  %8 = getelementptr inbounds <{ i32, [9 x i32] }>, <{ i32, [9 x i32] }>* %7, i32 0, i32 0
  store i32 150, i32* %8, align 16
  %9 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %10 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le64_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 1
  %14 = call i32 @memcpy(i32* %13, i32* %5, i32 8)
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 9
  store i32 60, i32* %15, align 4
  %16 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %17 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %22 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @w1_reset_bus(%struct.TYPE_3__* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %40

28:                                               ; preds = %1
  %29 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %30 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = call i32 @w1_write_block(%struct.TYPE_3__* %31, i32* %32, i32 %34)
  %36 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %37 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @w1_reset_bus(%struct.TYPE_3__* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %28, %27
  %41 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %42 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @le64_to_cpu(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @w1_reset_bus(%struct.TYPE_3__*) #2

declare dso_local i32 @w1_write_block(%struct.TYPE_3__*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
