; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_reset_select_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_reset_select_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@W1_SKIP_ROM = common dso_local global i32 0, align 4
@W1_MATCH_ROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w1_reset_select_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca [9 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  %6 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %7 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i64 @w1_reset_bus(%struct.TYPE_4__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %14 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %21 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* @W1_SKIP_ROM, align 4
  %24 = call i32 @w1_write_8(%struct.TYPE_4__* %22, i32 %23)
  br label %40

25:                                               ; preds = %12
  %26 = bitcast [9 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 36, i1 false)
  %27 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %28 = load i32, i32* @W1_MATCH_ROM, align 4
  store i32 %28, i32* %27, align 4
  %29 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %30 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @le64_to_cpu(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 1
  %34 = call i32 @memcpy(i32* %33, i32* %5, i32 8)
  %35 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %36 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %39 = call i32 @w1_write_block(%struct.TYPE_4__* %37, i32* %38, i32 9)
  br label %40

40:                                               ; preds = %25, %19
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @w1_reset_bus(%struct.TYPE_4__*) #1

declare dso_local i32 @w1_write_8(%struct.TYPE_4__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
