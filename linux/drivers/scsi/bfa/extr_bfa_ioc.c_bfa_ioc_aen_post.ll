; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_aen_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_aen_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.bfad_s = type { i32 }
%struct.bfa_aen_entry_s = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i32 }

@BFA_AEN_CAT_IOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_aen_post(%struct.bfa_ioc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca %struct.bfa_aen_entry_s*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.bfad_s*
  store %struct.bfad_s* %13, %struct.bfad_s** %5, align 8
  %14 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %15 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %16 = call i32 @bfad_get_aen_entry(%struct.bfad_s* %14, %struct.bfa_aen_entry_s* %15)
  %17 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %18 = icmp ne %struct.bfa_aen_entry_s* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %22 = call i32 @bfa_ioc_get_type(%struct.bfa_ioc_s* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %57 [
    i32 130, label %24
    i32 129, label %34
    i32 128, label %50
  ]

24:                                               ; preds = %20
  %25 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 8
  br label %62

34:                                               ; preds = %20
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %41 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i32 %39, i32* %43, align 8
  %44 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %45 = call i8* @bfa_ioc_get_mac(%struct.bfa_ioc_s* %44)
  %46 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %47 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i8* %45, i8** %49, align 8
  br label %62

50:                                               ; preds = %20
  %51 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %52 = call i8* @bfa_ioc_get_mac(%struct.bfa_ioc_s* %51)
  %53 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %54 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  br label %62

57:                                               ; preds = %20
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 130
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  br label %62

62:                                               ; preds = %57, %50, %34, %24
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %65 = getelementptr inbounds %struct.bfa_aen_entry_s, %struct.bfa_aen_entry_s* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = load %struct.bfa_aen_entry_s*, %struct.bfa_aen_entry_s** %6, align 8
  %69 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %70 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %71 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @BFA_AEN_CAT_IOC, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s* %68, %struct.bfad_s* %69, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %62, %19
  ret void
}

declare dso_local i32 @bfad_get_aen_entry(%struct.bfad_s*, %struct.bfa_aen_entry_s*) #1

declare dso_local i32 @bfa_ioc_get_type(%struct.bfa_ioc_s*) #1

declare dso_local i8* @bfa_ioc_get_mac(%struct.bfa_ioc_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfad_im_post_vendor_event(%struct.bfa_aen_entry_s*, %struct.bfad_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
