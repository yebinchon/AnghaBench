; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.vhost_virtqueue }
%struct.vhost_virtqueue = type { i32, i32 }

@VHOST_SCSI_FEATURES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VHOST_F_LOG_ALL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VHOST_SCSI_MAX_VQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_scsi*, i32)* @vhost_scsi_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_set_features(%struct.vhost_scsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_scsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhost_virtqueue*, align 8
  %7 = alloca i32, align 4
  store %struct.vhost_scsi* %0, %struct.vhost_scsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @VHOST_SCSI_FEATURES, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %18 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @VHOST_F_LOG_ALL, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %28 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %27, i32 0, i32 0
  %29 = call i32 @vhost_log_access_ok(%struct.TYPE_4__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %33 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %26, %16
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %45 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store %struct.vhost_virtqueue* %50, %struct.vhost_virtqueue** %6, align 8
  %51 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %52 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %56 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %58 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %39

63:                                               ; preds = %39
  %64 = load %struct.vhost_scsi*, %struct.vhost_scsi** %4, align 8
  %65 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %31, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_log_access_ok(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
