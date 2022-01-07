; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bman_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bman_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_pool = type { i32 }
%struct.bm_buffer = type { i32 }
%struct.bman_portal = type { i32 }
%struct.bm_rcr_entry = type { i32* }

@ETIMEDOUT = common dso_local global i32 0, align 4
@BM_RCR_VERB_CMD_BPID_SINGLE = common dso_local global i32 0, align 4
@BM_RCR_VERB_BUFCOUNT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bman_release(%struct.bman_pool* %0, %struct.bm_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bman_pool*, align 8
  %6 = alloca %struct.bm_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bman_portal*, align 8
  %9 = alloca %struct.bm_rcr_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bman_pool* %0, %struct.bman_pool** %5, align 8
  store %struct.bm_buffer* %1, %struct.bm_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1000, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @DPAA_ASSERT(i32 %23)
  br label %25

25:                                               ; preds = %51, %21
  %26 = call %struct.bman_portal* (...) @get_affine_portal()
  store %struct.bman_portal* %26, %struct.bman_portal** %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  %29 = load %struct.bman_portal*, %struct.bman_portal** %8, align 8
  %30 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %29, i32 0, i32 0
  %31 = call i32 @bm_rcr_get_avail(i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.bman_portal*, %struct.bman_portal** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @update_rcr_ci(%struct.bman_portal* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %25
  %39 = load %struct.bman_portal*, %struct.bman_portal** %8, align 8
  %40 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %39, i32 0, i32 0
  %41 = call %struct.bm_rcr_entry* @bm_rcr_start(i32* %40)
  store %struct.bm_rcr_entry* %41, %struct.bm_rcr_entry** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @local_irq_restore(i64 %42)
  %44 = call i32 (...) @put_affine_portal()
  %45 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %9, align 8
  %46 = call i64 @likely(%struct.bm_rcr_entry* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %55

49:                                               ; preds = %38
  %50 = call i32 @udelay(i32 1)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %25, label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %108

65:                                               ; preds = %55
  %66 = call %struct.bman_portal* (...) @get_affine_portal()
  store %struct.bman_portal* %66, %struct.bman_portal** %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @local_irq_save(i64 %67)
  %69 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %9, align 8
  %70 = getelementptr inbounds %struct.bm_rcr_entry, %struct.bm_rcr_entry* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.bm_buffer*, %struct.bm_buffer** %6, align 8
  %73 = call i32 @bm_buffer_get64(%struct.bm_buffer* %72)
  %74 = call i32 @bm_buffer_set64(i32* %71, i32 %73)
  %75 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %9, align 8
  %76 = getelementptr inbounds %struct.bm_rcr_entry, %struct.bm_rcr_entry* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.bman_pool*, %struct.bman_pool** %5, align 8
  %79 = getelementptr inbounds %struct.bman_pool, %struct.bman_pool* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bm_buffer_set_bpid(i32* %77, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %65
  %85 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %9, align 8
  %86 = getelementptr inbounds %struct.bm_rcr_entry, %struct.bm_rcr_entry* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load %struct.bm_buffer*, %struct.bm_buffer** %6, align 8
  %90 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %89, i64 1
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i32* %88, %struct.bm_buffer* %90, i32 %94)
  br label %96

96:                                               ; preds = %84, %65
  %97 = load %struct.bman_portal*, %struct.bman_portal** %8, align 8
  %98 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %97, i32 0, i32 0
  %99 = load i32, i32* @BM_RCR_VERB_CMD_BPID_SINGLE, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @BM_RCR_VERB_BUFCOUNT_MASK, align 4
  %102 = and i32 %100, %101
  %103 = or i32 %99, %102
  %104 = call i32 @bm_rcr_pvb_commit(i32* %98, i32 %103)
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @local_irq_restore(i64 %105)
  %107 = call i32 (...) @put_affine_portal()
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %96, %62
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local %struct.bman_portal* @get_affine_portal(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @bm_rcr_get_avail(i32*) #1

declare dso_local i32 @update_rcr_ci(%struct.bman_portal*, i32) #1

declare dso_local %struct.bm_rcr_entry* @bm_rcr_start(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @put_affine_portal(...) #1

declare dso_local i64 @likely(%struct.bm_rcr_entry*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bm_buffer_set64(i32*, i32) #1

declare dso_local i32 @bm_buffer_get64(%struct.bm_buffer*) #1

declare dso_local i32 @bm_buffer_set_bpid(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.bm_buffer*, i32) #1

declare dso_local i32 @bm_rcr_pvb_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
