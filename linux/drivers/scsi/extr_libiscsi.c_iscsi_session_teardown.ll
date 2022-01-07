; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_session_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_session_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.TYPE_2__*, %struct.iscsi_session* }
%struct.TYPE_2__ = type { %struct.module* }
%struct.module = type { i32 }
%struct.iscsi_session = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_session_teardown(%struct.iscsi_cls_session* %0) #0 {
  %2 = alloca %struct.iscsi_cls_session*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %2, align 8
  %6 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %6, i32 0, i32 1
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %7, align 8
  store %struct.iscsi_session* %8, %struct.iscsi_session** %3, align 8
  %9 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %10 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.module*, %struct.module** %12, align 8
  store %struct.module* %13, %struct.module** %4, align 8
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %14, i32 0, i32 14
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %5, align 8
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %17, i32 0, i32 13
  %19 = call i32 @iscsi_pool_free(i32* %18)
  %20 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %21 = call i32 @iscsi_remove_session(%struct.iscsi_cls_session* %20)
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @kfree(i32 %32)
  %34 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kfree(i32 %36)
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @kfree(i32 %40)
  %42 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %43 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kfree(i32 %44)
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %47 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kfree(i32 %48)
  %50 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %51 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kfree(i32 %52)
  %54 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %55 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @kfree(i32 %56)
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %59 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @kfree(i32 %60)
  %62 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %63 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %67 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kfree(i32 %68)
  %70 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %71 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @kfree(i32 %72)
  %74 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %75 = call i32 @iscsi_free_session(%struct.iscsi_cls_session* %74)
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %77 = call i32 @iscsi_host_dec_session_cnt(%struct.Scsi_Host* %76)
  %78 = load %struct.module*, %struct.module** %4, align 8
  %79 = call i32 @module_put(%struct.module* %78)
  ret void
}

declare dso_local i32 @iscsi_pool_free(i32*) #1

declare dso_local i32 @iscsi_remove_session(%struct.iscsi_cls_session*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iscsi_free_session(%struct.iscsi_cls_session*) #1

declare dso_local i32 @iscsi_host_dec_session_cnt(%struct.Scsi_Host*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
