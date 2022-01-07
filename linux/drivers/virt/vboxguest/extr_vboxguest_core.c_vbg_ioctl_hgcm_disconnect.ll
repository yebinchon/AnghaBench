; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_hgcm_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_hgcm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vbg_session = type { i64*, i32 }
%struct.vbg_ioctl_hgcm_disconnect = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, %struct.vbg_ioctl_hgcm_disconnect*)* @vbg_ioctl_hgcm_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_hgcm_disconnect(%struct.vbg_dev* %0, %struct.vbg_session* %1, %struct.vbg_ioctl_hgcm_disconnect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbg_dev*, align 8
  %6 = alloca %struct.vbg_session*, align 8
  %7 = alloca %struct.vbg_ioctl_hgcm_disconnect*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %5, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %6, align 8
  store %struct.vbg_ioctl_hgcm_disconnect* %2, %struct.vbg_ioctl_hgcm_disconnect** %7, align 8
  %11 = load %struct.vbg_ioctl_hgcm_disconnect*, %struct.vbg_ioctl_hgcm_disconnect** %7, align 8
  %12 = getelementptr inbounds %struct.vbg_ioctl_hgcm_disconnect, %struct.vbg_ioctl_hgcm_disconnect* %11, i32 0, i32 0
  %13 = call i64 @vbg_ioctl_chk(%struct.TYPE_6__* %12, i32 8, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %120

18:                                               ; preds = %3
  %19 = load %struct.vbg_ioctl_hgcm_disconnect*, %struct.vbg_ioctl_hgcm_disconnect** %7, align 8
  %20 = getelementptr inbounds %struct.vbg_ioctl_hgcm_disconnect, %struct.vbg_ioctl_hgcm_disconnect* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @U32_MAX, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %18
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %120

33:                                               ; preds = %26
  %34 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %35 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %63, %33
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %40 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = call i32 @ARRAY_SIZE(i64* %41)
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %46 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load i64, i64* @U32_MAX, align 8
  %56 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %57 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  br label %66

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %37

66:                                               ; preds = %54, %37
  %67 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %68 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %72 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = call i32 @ARRAY_SIZE(i64* %73)
  %75 = icmp sge i32 %70, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %120

79:                                               ; preds = %66
  %80 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %81 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %82 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.vbg_ioctl_hgcm_disconnect*, %struct.vbg_ioctl_hgcm_disconnect** %7, align 8
  %86 = getelementptr inbounds %struct.vbg_ioctl_hgcm_disconnect, %struct.vbg_ioctl_hgcm_disconnect* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = call i32 @vbg_hgcm_disconnect(%struct.vbg_dev* %80, i32 %83, i64 %84, i64* %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %90 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %89, i32 0, i32 0
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %79
  %95 = load %struct.vbg_ioctl_hgcm_disconnect*, %struct.vbg_ioctl_hgcm_disconnect** %7, align 8
  %96 = getelementptr inbounds %struct.vbg_ioctl_hgcm_disconnect, %struct.vbg_ioctl_hgcm_disconnect* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %102 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 0, i64* %106, align 8
  br label %115

107:                                              ; preds = %94, %79
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %110 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  store i64 %108, i64* %114, align 8
  br label %115

115:                                              ; preds = %107, %100
  %116 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %117 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %115, %76, %30, %15
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @vbg_ioctl_chk(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vbg_hgcm_disconnect(%struct.vbg_dev*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
