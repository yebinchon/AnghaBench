; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32 }
%struct.qm_fd = type { i32 }
%struct.qman_portal = type { i32, i64 }
%struct.qm_eqcr_entry = type { %struct.qm_fd, i32 }

@QM_EQCR_VERB_CMD_ENQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_enqueue(%struct.qman_fq* %0, %struct.qm_fd* %1) #0 {
  %3 = alloca %struct.qman_fq*, align 8
  %4 = alloca %struct.qm_fd*, align 8
  %5 = alloca %struct.qman_portal*, align 8
  %6 = alloca %struct.qm_eqcr_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qman_fq* %0, %struct.qman_fq** %3, align 8
  store %struct.qm_fd* %1, %struct.qm_fd** %4, align 8
  %9 = call %struct.qman_portal* (...) @get_affine_portal()
  store %struct.qman_portal* %9, %struct.qman_portal** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %13 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %18 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %17, i32 0, i32 0
  %19 = call %struct.qm_eqcr_entry* @qm_eqcr_start_stash(i32* %18)
  store %struct.qm_eqcr_entry* %19, %struct.qm_eqcr_entry** %6, align 8
  br label %34

20:                                               ; preds = %2
  %21 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %22 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %21, i32 0, i32 0
  %23 = call i32 @qm_eqcr_get_avail(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @update_eqcr_ci(%struct.qman_portal* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %32 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %31, i32 0, i32 0
  %33 = call %struct.qm_eqcr_entry* @qm_eqcr_start_no_stash(i32* %32)
  store %struct.qm_eqcr_entry* %33, %struct.qm_eqcr_entry** %6, align 8
  br label %34

34:                                               ; preds = %30, %16
  %35 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %6, align 8
  %36 = icmp ne %struct.qm_eqcr_entry* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %62

42:                                               ; preds = %34
  %43 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %6, align 8
  %44 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %45 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @qm_fqid_set(%struct.qm_eqcr_entry* %43, i32 %46)
  %48 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %49 = call i32 @fq_to_tag(%struct.qman_fq* %48)
  %50 = call i32 @cpu_to_be32(i32 %49)
  %51 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %6, align 8
  %52 = getelementptr inbounds %struct.qm_eqcr_entry, %struct.qm_eqcr_entry* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %6, align 8
  %54 = getelementptr inbounds %struct.qm_eqcr_entry, %struct.qm_eqcr_entry* %53, i32 0, i32 0
  %55 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %56 = bitcast %struct.qm_fd* %54 to i8*
  %57 = bitcast %struct.qm_fd* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %59 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %58, i32 0, i32 0
  %60 = load i32, i32* @QM_EQCR_VERB_CMD_ENQUEUE, align 4
  %61 = call i32 @qm_eqcr_pvb_commit(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %42, %41
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @local_irq_restore(i64 %63)
  %65 = call i32 (...) @put_affine_portal()
  ret i32 0
}

declare dso_local %struct.qman_portal* @get_affine_portal(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.qm_eqcr_entry* @qm_eqcr_start_stash(i32*) #1

declare dso_local i32 @qm_eqcr_get_avail(i32*) #1

declare dso_local i32 @update_eqcr_ci(%struct.qman_portal*, i32) #1

declare dso_local %struct.qm_eqcr_entry* @qm_eqcr_start_no_stash(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qm_fqid_set(%struct.qm_eqcr_entry*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fq_to_tag(%struct.qman_fq*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qm_eqcr_pvb_commit(i32*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
