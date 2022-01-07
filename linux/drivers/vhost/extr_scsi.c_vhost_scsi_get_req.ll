; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_get_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { %struct.vhost_scsi_tpg** }
%struct.vhost_scsi_ctx = type { i32*, i64*, i32, i32, i32 }
%struct.vhost_scsi_tpg = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Faulted on copy_from_iter_full\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Illegal virtio-scsi lun: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Target 0x%x does not exist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_virtqueue*, %struct.vhost_scsi_ctx*, %struct.vhost_scsi_tpg**)* @vhost_scsi_get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_get_req(%struct.vhost_virtqueue* %0, %struct.vhost_scsi_ctx* %1, %struct.vhost_scsi_tpg** %2) #0 {
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca %struct.vhost_scsi_ctx*, align 8
  %6 = alloca %struct.vhost_scsi_tpg**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhost_scsi_tpg**, align 8
  %9 = alloca %struct.vhost_scsi_tpg*, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %4, align 8
  store %struct.vhost_scsi_ctx* %1, %struct.vhost_scsi_ctx** %5, align 8
  store %struct.vhost_scsi_tpg** %2, %struct.vhost_scsi_tpg*** %6, align 8
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %18, i32 0, i32 2
  %20 = call i32 @copy_from_iter_full(i32 %14, i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %28 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %79

29:                                               ; preds = %3
  %30 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %40 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %78

45:                                               ; preds = %29
  %46 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %47 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %46, i32 0, i32 0
  %48 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %47, align 8
  store %struct.vhost_scsi_tpg** %48, %struct.vhost_scsi_tpg*** %8, align 8
  %49 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %8, align 8
  %50 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %49, i64 %53
  %55 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %54, align 8
  %56 = call %struct.vhost_scsi_tpg* @READ_ONCE(%struct.vhost_scsi_tpg* %55)
  store %struct.vhost_scsi_tpg* %56, %struct.vhost_scsi_tpg** %9, align 8
  %57 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %9, align 8
  %58 = icmp ne %struct.vhost_scsi_tpg* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %45
  %64 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %65 = load %struct.vhost_scsi_ctx*, %struct.vhost_scsi_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.vhost_scsi_ctx, %struct.vhost_scsi_ctx* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  br label %77

70:                                               ; preds = %45
  %71 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %6, align 8
  %72 = icmp ne %struct.vhost_scsi_tpg** %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %9, align 8
  %75 = load %struct.vhost_scsi_tpg**, %struct.vhost_scsi_tpg*** %6, align 8
  store %struct.vhost_scsi_tpg* %74, %struct.vhost_scsi_tpg** %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %38
  br label %79

79:                                               ; preds = %78, %26
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @copy_from_iter_full(i32, i32, i32*) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, ...) #1

declare dso_local %struct.vhost_scsi_tpg* @READ_ONCE(%struct.vhost_scsi_tpg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
