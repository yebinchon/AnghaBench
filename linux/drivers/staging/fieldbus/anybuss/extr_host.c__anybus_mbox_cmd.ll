; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c__anybus_mbox_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c__anybus_mbox_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, i32, i32, i32 }
%struct.ab_task = type { %struct.mbox_priv }
%struct.mbox_priv = type { i8*, i64, i64, %struct.anybus_mbox_hdr }
%struct.anybus_mbox_hdr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MAX_MBOX_MSG_SZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@task_fn_mbox = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INFO_TYPE_FB = common dso_local global i32 0, align 4
@INFO_TYPE_APP = common dso_local global i32 0, align 4
@INFO_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_host*, i32, i32, i8*, i64, i8*, i64, i8*, i64)* @_anybus_mbox_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_anybus_mbox_cmd(%struct.anybuss_host* %0, i32 %1, i32 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.anybuss_host*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ab_task*, align 8
  %21 = alloca %struct.mbox_priv*, align 8
  %22 = alloca %struct.anybus_mbox_hdr*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.anybuss_host* %0, %struct.anybuss_host** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  %26 = load i64, i64* %17, align 8
  %27 = load i64, i64* %15, align 8
  %28 = call i64 @max(i64 %26, i64 %27)
  store i64 %28, i64* %23, align 8
  %29 = load i64, i64* %23, align 8
  %30 = load i64, i64* @MAX_MBOX_MSG_SZ, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %9
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %151

35:                                               ; preds = %9
  %36 = load i8*, i8** %18, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* %19, align 8
  %40 = icmp ugt i64 %39, 8
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %151

44:                                               ; preds = %38, %35
  %45 = load %struct.anybuss_host*, %struct.anybuss_host** %11, align 8
  %46 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @task_fn_mbox, align 4
  %49 = call %struct.ab_task* @ab_task_create_get(i32 %47, i32 %48)
  store %struct.ab_task* %49, %struct.ab_task** %20, align 8
  %50 = load %struct.ab_task*, %struct.ab_task** %20, align 8
  %51 = icmp ne %struct.ab_task* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %151

55:                                               ; preds = %44
  %56 = load %struct.ab_task*, %struct.ab_task** %20, align 8
  %57 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %56, i32 0, i32 0
  store %struct.mbox_priv* %57, %struct.mbox_priv** %21, align 8
  %58 = load %struct.mbox_priv*, %struct.mbox_priv** %21, align 8
  %59 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %58, i32 0, i32 3
  store %struct.anybus_mbox_hdr* %59, %struct.anybus_mbox_hdr** %22, align 8
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @INFO_TYPE_FB, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @INFO_TYPE_APP, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %24, align 4
  %68 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %22, align 8
  %69 = call i32 @memset(%struct.anybus_mbox_hdr* %68, i32 0, i32 64)
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* @INFO_COMMAND, align 4
  %72 = or i32 %70, %71
  %73 = call i8* @cpu_to_be16(i32 %72)
  %74 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %22, align 8
  %75 = getelementptr inbounds %struct.anybus_mbox_hdr, %struct.anybus_mbox_hdr* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i8* @cpu_to_be16(i32 %76)
  %78 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %22, align 8
  %79 = getelementptr inbounds %struct.anybus_mbox_hdr, %struct.anybus_mbox_hdr* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* %15, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i8* @cpu_to_be16(i32 %81)
  %83 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %22, align 8
  %84 = getelementptr inbounds %struct.anybus_mbox_hdr, %struct.anybus_mbox_hdr* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = call i8* @cpu_to_be16(i32 1)
  %86 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %22, align 8
  %87 = getelementptr inbounds %struct.anybus_mbox_hdr, %struct.anybus_mbox_hdr* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = call i8* @cpu_to_be16(i32 1)
  %89 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %22, align 8
  %90 = getelementptr inbounds %struct.anybus_mbox_hdr, %struct.anybus_mbox_hdr* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = call i8* @cpu_to_be16(i32 0)
  %92 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %22, align 8
  %93 = getelementptr inbounds %struct.anybus_mbox_hdr, %struct.anybus_mbox_hdr* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = call i8* @cpu_to_be16(i32 0)
  %95 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %22, align 8
  %96 = getelementptr inbounds %struct.anybus_mbox_hdr, %struct.anybus_mbox_hdr* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %18, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %66
  %100 = load %struct.anybus_mbox_hdr*, %struct.anybus_mbox_hdr** %22, align 8
  %101 = getelementptr inbounds %struct.anybus_mbox_hdr, %struct.anybus_mbox_hdr* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %18, align 8
  %104 = load i64, i64* %19, align 8
  %105 = call i32 @memcpy(i8* %102, i8* %103, i64 %104)
  br label %106

106:                                              ; preds = %99, %66
  %107 = load %struct.mbox_priv*, %struct.mbox_priv** %21, align 8
  %108 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32 @memcpy(i8* %109, i8* %110, i64 %111)
  %113 = load i64, i64* %15, align 8
  %114 = load %struct.mbox_priv*, %struct.mbox_priv** %21, align 8
  %115 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %17, align 8
  %117 = load %struct.mbox_priv*, %struct.mbox_priv** %21, align 8
  %118 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.ab_task*, %struct.ab_task** %20, align 8
  %120 = load %struct.anybuss_host*, %struct.anybuss_host** %11, align 8
  %121 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.anybuss_host*, %struct.anybuss_host** %11, align 8
  %124 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %123, i32 0, i32 2
  %125 = load %struct.anybuss_host*, %struct.anybuss_host** %11, align 8
  %126 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %125, i32 0, i32 1
  %127 = call i32 @ab_task_enqueue_wait(%struct.ab_task* %119, i32 %122, i32* %124, i32* %126)
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %25, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %106
  br label %147

131:                                              ; preds = %106
  %132 = load %struct.anybuss_host*, %struct.anybuss_host** %11, align 8
  %133 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mbox_priv*, %struct.mbox_priv** %21, align 8
  %136 = call i32 @mbox_cmd_err(i32 %134, %struct.mbox_priv* %135)
  store i32 %136, i32* %25, align 4
  %137 = load i32, i32* %25, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %147

140:                                              ; preds = %131
  %141 = load i8*, i8** %16, align 8
  %142 = load %struct.mbox_priv*, %struct.mbox_priv** %21, align 8
  %143 = getelementptr inbounds %struct.mbox_priv, %struct.mbox_priv* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* %17, align 8
  %146 = call i32 @memcpy(i8* %141, i8* %144, i64 %145)
  br label %147

147:                                              ; preds = %140, %139, %130
  %148 = load %struct.ab_task*, %struct.ab_task** %20, align 8
  %149 = call i32 @ab_task_put(%struct.ab_task* %148)
  %150 = load i32, i32* %25, align 4
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %147, %52, %41, %32
  %152 = load i32, i32* %10, align 4
  ret i32 %152
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local %struct.ab_task* @ab_task_create_get(i32, i32) #1

declare dso_local i32 @memset(%struct.anybus_mbox_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ab_task_enqueue_wait(%struct.ab_task*, i32, i32*, i32*) #1

declare dso_local i32 @mbox_cmd_err(i32, %struct.mbox_priv*) #1

declare dso_local i32 @ab_task_put(%struct.ab_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
