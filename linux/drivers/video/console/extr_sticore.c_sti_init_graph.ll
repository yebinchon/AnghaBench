; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_init_graph.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_init_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sti_init_outptr, %struct.sti_init_inptr_ext, %struct.sti_init_inptr_ext }
%struct.sti_init_outptr = type { i32, i32 }
%struct.sti_init_inptr_ext = type { i32, i32 }
%struct.sti_init_inptr = type { i32, i32 }

@default_init_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"STI init_graph failed (ret %d, errno %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_struct*)* @sti_init_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_init_graph(%struct.sti_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sti_struct*, align 8
  %4 = alloca %struct.sti_init_inptr*, align 8
  %5 = alloca %struct.sti_init_inptr_ext*, align 8
  %6 = alloca %struct.sti_init_outptr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sti_struct* %0, %struct.sti_struct** %3, align 8
  %10 = load %struct.sti_struct*, %struct.sti_struct** %3, align 8
  %11 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = bitcast %struct.sti_init_inptr_ext* %13 to %struct.sti_init_inptr*
  store %struct.sti_init_inptr* %14, %struct.sti_init_inptr** %4, align 8
  %15 = load %struct.sti_struct*, %struct.sti_struct** %3, align 8
  %16 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.sti_init_inptr_ext* %18, %struct.sti_init_inptr_ext** %5, align 8
  %19 = load %struct.sti_struct*, %struct.sti_struct** %3, align 8
  %20 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.sti_init_outptr* %22, %struct.sti_init_outptr** %6, align 8
  %23 = load %struct.sti_struct*, %struct.sti_struct** %3, align 8
  %24 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.sti_init_inptr*, %struct.sti_init_inptr** %4, align 8
  %28 = bitcast %struct.sti_init_inptr* %27 to %struct.sti_init_inptr_ext*
  %29 = call i32 @memset(%struct.sti_init_inptr_ext* %28, i32 0, i32 8)
  %30 = load %struct.sti_init_inptr*, %struct.sti_init_inptr** %4, align 8
  %31 = getelementptr inbounds %struct.sti_init_inptr, %struct.sti_init_inptr* %30, i32 0, i32 0
  store i32 3, i32* %31, align 4
  %32 = load %struct.sti_init_inptr_ext*, %struct.sti_init_inptr_ext** %5, align 8
  %33 = call i32 @memset(%struct.sti_init_inptr_ext* %32, i32 0, i32 8)
  %34 = load %struct.sti_init_inptr_ext*, %struct.sti_init_inptr_ext** %5, align 8
  %35 = call i32 @STI_PTR(%struct.sti_init_inptr_ext* %34)
  %36 = load %struct.sti_init_inptr*, %struct.sti_init_inptr** %4, align 8
  %37 = getelementptr inbounds %struct.sti_init_inptr, %struct.sti_init_inptr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sti_init_outptr*, %struct.sti_init_outptr** %6, align 8
  %39 = getelementptr inbounds %struct.sti_init_outptr, %struct.sti_init_outptr* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.sti_struct*, %struct.sti_struct** %3, align 8
  %41 = load %struct.sti_struct*, %struct.sti_struct** %3, align 8
  %42 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sti_init_inptr*, %struct.sti_init_inptr** %4, align 8
  %45 = bitcast %struct.sti_init_inptr* %44 to %struct.sti_init_inptr_ext*
  %46 = load %struct.sti_init_outptr*, %struct.sti_init_outptr** %6, align 8
  %47 = load %struct.sti_struct*, %struct.sti_struct** %3, align 8
  %48 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @sti_call(%struct.sti_struct* %40, i32 %43, i32* @default_init_flags, %struct.sti_init_inptr_ext* %45, %struct.sti_init_outptr* %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %1
  %54 = load %struct.sti_init_outptr*, %struct.sti_init_outptr** %6, align 8
  %55 = getelementptr inbounds %struct.sti_init_outptr, %struct.sti_init_outptr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sti_struct*, %struct.sti_struct** %3, align 8
  %58 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %1
  %60 = load %struct.sti_init_outptr*, %struct.sti_init_outptr** %6, align 8
  %61 = getelementptr inbounds %struct.sti_init_outptr, %struct.sti_init_outptr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load %struct.sti_struct*, %struct.sti_struct** %3, align 8
  %64 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %63, i32 0, i32 0
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  store i32 -1, i32* %2, align 4
  br label %74

73:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.sti_init_inptr_ext*, i32, i32) #1

declare dso_local i32 @STI_PTR(%struct.sti_init_inptr_ext*) #1

declare dso_local i32 @sti_call(%struct.sti_struct*, i32, i32*, %struct.sti_init_inptr_ext*, %struct.sti_init_outptr*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
