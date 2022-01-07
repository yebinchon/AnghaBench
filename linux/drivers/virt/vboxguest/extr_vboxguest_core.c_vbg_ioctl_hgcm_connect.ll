; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_hgcm_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_hgcm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vbg_session = type { i8**, i32 }
%struct.vbg_ioctl_hgcm_connect = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i8* null, align 8
@EMFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, %struct.vbg_ioctl_hgcm_connect*)* @vbg_ioctl_hgcm_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_hgcm_connect(%struct.vbg_dev* %0, %struct.vbg_session* %1, %struct.vbg_ioctl_hgcm_connect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbg_dev*, align 8
  %6 = alloca %struct.vbg_session*, align 8
  %7 = alloca %struct.vbg_ioctl_hgcm_connect*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %5, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %6, align 8
  store %struct.vbg_ioctl_hgcm_connect* %2, %struct.vbg_ioctl_hgcm_connect** %7, align 8
  %11 = load %struct.vbg_ioctl_hgcm_connect*, %struct.vbg_ioctl_hgcm_connect** %7, align 8
  %12 = getelementptr inbounds %struct.vbg_ioctl_hgcm_connect, %struct.vbg_ioctl_hgcm_connect* %11, i32 0, i32 1
  %13 = call i64 @vbg_ioctl_chk(%struct.TYPE_8__* %12, i32 4, i32 8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %116

18:                                               ; preds = %3
  %19 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %20 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %47, %18
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %25 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i8** %26)
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %22
  %30 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %31 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %29
  %39 = load i8*, i8** @U32_MAX, align 8
  %40 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %41 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %39, i8** %45, align 8
  br label %50

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %22

50:                                               ; preds = %38, %22
  %51 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %52 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %56 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = call i32 @ARRAY_SIZE(i8** %57)
  %59 = icmp sge i32 %54, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EMFILE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %116

63:                                               ; preds = %50
  %64 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %65 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %66 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vbg_ioctl_hgcm_connect*, %struct.vbg_ioctl_hgcm_connect** %7, align 8
  %69 = getelementptr inbounds %struct.vbg_ioctl_hgcm_connect, %struct.vbg_ioctl_hgcm_connect* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.vbg_ioctl_hgcm_connect*, %struct.vbg_ioctl_hgcm_connect** %7, align 8
  %73 = getelementptr inbounds %struct.vbg_ioctl_hgcm_connect, %struct.vbg_ioctl_hgcm_connect* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = call i32 @vbg_hgcm_connect(%struct.vbg_dev* %64, i32 %67, i32* %71, i8** %8, i64* %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %77 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %76, i32 0, i32 0
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %63
  %82 = load %struct.vbg_ioctl_hgcm_connect*, %struct.vbg_ioctl_hgcm_connect** %7, align 8
  %83 = getelementptr inbounds %struct.vbg_ioctl_hgcm_connect, %struct.vbg_ioctl_hgcm_connect* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.vbg_ioctl_hgcm_connect*, %struct.vbg_ioctl_hgcm_connect** %7, align 8
  %90 = getelementptr inbounds %struct.vbg_ioctl_hgcm_connect, %struct.vbg_ioctl_hgcm_connect* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %95 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %93, i8** %99, align 8
  br label %111

100:                                              ; preds = %81, %63
  %101 = load %struct.vbg_ioctl_hgcm_connect*, %struct.vbg_ioctl_hgcm_connect** %7, align 8
  %102 = getelementptr inbounds %struct.vbg_ioctl_hgcm_connect, %struct.vbg_ioctl_hgcm_connect* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i8* null, i8** %104, align 8
  %105 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %106 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* null, i8** %110, align 8
  br label %111

111:                                              ; preds = %100, %87
  %112 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %113 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %111, %60, %15
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @vbg_ioctl_chk(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vbg_hgcm_connect(%struct.vbg_dev*, i32, i32*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
