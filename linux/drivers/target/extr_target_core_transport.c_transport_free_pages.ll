; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, i32*, i64, i32*, i64, i32* }

@SCF_PASSTHROUGH_PROT_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@SCF_COMPARE_AND_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @transport_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_free_pages(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %3 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @SCF_PASSTHROUGH_PROT_SG_TO_MEM_NOALLOC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 6
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @target_free_sgl(i32* %12, i64 %15)
  %17 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %9, %1
  %22 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %21
  %29 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %30 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SCF_COMPARE_AND_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @target_free_sgl(i32* %38, i64 %41)
  %43 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %35, %28
  %48 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %49 = call i32 @transport_reset_sgl_orig(%struct.se_cmd* %48)
  br label %75

50:                                               ; preds = %21
  %51 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %52 = call i32 @transport_reset_sgl_orig(%struct.se_cmd* %51)
  %53 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %54 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %57 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @target_free_sgl(i32* %55, i64 %58)
  %60 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %61 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %63 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %68 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @target_free_sgl(i32* %66, i64 %69)
  %71 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %72 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %74 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @target_free_sgl(i32*, i64) #1

declare dso_local i32 @transport_reset_sgl_orig(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
