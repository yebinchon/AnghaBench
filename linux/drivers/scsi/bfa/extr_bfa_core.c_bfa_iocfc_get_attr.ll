; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.bfa_iocfc_s }
%struct.bfa_iocfc_s = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.bfa_iocfc_attr_s = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_iocfc_get_attr(%struct.bfa_s* %0, %struct.bfa_iocfc_attr_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfa_iocfc_attr_s*, align 8
  %5 = alloca %struct.bfa_iocfc_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfa_iocfc_attr_s* %1, %struct.bfa_iocfc_attr_s** %4, align 8
  %6 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %6, i32 0, i32 0
  store %struct.bfa_iocfc_s* %7, %struct.bfa_iocfc_s** %5, align 8
  %8 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %9 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.bfa_iocfc_attr_s*, %struct.bfa_iocfc_attr_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfa_iocfc_attr_s, %struct.bfa_iocfc_attr_s* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @be16_to_cpu(i64 %30)
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @be16_to_cpu(i64 %38)
  br label %40

40:                                               ; preds = %32, %24
  %41 = phi i8* [ %31, %24 ], [ %39, %32 ]
  %42 = load %struct.bfa_iocfc_attr_s*, %struct.bfa_iocfc_attr_s** %4, align 8
  %43 = getelementptr inbounds %struct.bfa_iocfc_attr_s, %struct.bfa_iocfc_attr_s* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @be16_to_cpu(i64 %58)
  br label %68

60:                                               ; preds = %40
  %61 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @be16_to_cpu(i64 %66)
  br label %68

68:                                               ; preds = %60, %52
  %69 = phi i8* [ %59, %52 ], [ %67, %60 ]
  %70 = load %struct.bfa_iocfc_attr_s*, %struct.bfa_iocfc_attr_s** %4, align 8
  %71 = getelementptr inbounds %struct.bfa_iocfc_attr_s, %struct.bfa_iocfc_attr_s* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %74 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bfa_iocfc_attr_s*, %struct.bfa_iocfc_attr_s** %4, align 8
  %77 = getelementptr inbounds %struct.bfa_iocfc_attr_s, %struct.bfa_iocfc_attr_s* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  ret void
}

declare dso_local i8* @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
