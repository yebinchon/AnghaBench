; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_get_rport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_get_rport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { %struct.list_head, %struct.bfa_fcs_s* }
%struct.list_head = type { i32 }
%struct.bfa_fcs_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bfa_fcs_lport_get_rport(%struct.bfa_fcs_lport_s* %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfa_fcs_lport_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.bfa_fcs_rport_s*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bfa_fcs_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store %struct.bfa_fcs_rport_s* null, %struct.bfa_fcs_rport_s** %14, align 8
  %17 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %18 = icmp eq %struct.bfa_fcs_lport_s* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %5
  store i64 0, i64* %6, align 8
  br label %101

23:                                               ; preds = %19
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %24, i32 0, i32 1
  %26 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %25, align 8
  store %struct.bfa_fcs_s* %26, %struct.bfa_fcs_s** %16, align 8
  %27 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @bfa_trc(%struct.bfa_fcs_s* %27, i32 %28)
  store i32 0, i32* %15, align 4
  %30 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %31 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %30, i32 0, i32 0
  store %struct.list_head* %31, %struct.list_head** %12, align 8
  %32 = load %struct.list_head*, %struct.list_head** %12, align 8
  %33 = call %struct.list_head* @bfa_q_first(%struct.list_head* %32)
  store %struct.list_head* %33, %struct.list_head** %13, align 8
  br label %34

34:                                               ; preds = %85, %52, %23
  %35 = load %struct.list_head*, %struct.list_head** %13, align 8
  %36 = load %struct.list_head*, %struct.list_head** %12, align 8
  %37 = icmp ne %struct.list_head* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %44, label %90

44:                                               ; preds = %42
  %45 = load %struct.list_head*, %struct.list_head** %13, align 8
  %46 = bitcast %struct.list_head* %45 to %struct.bfa_fcs_rport_s*
  store %struct.bfa_fcs_rport_s* %46, %struct.bfa_fcs_rport_s** %14, align 8
  %47 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %14, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @bfa_ntoh3b(i32 %49)
  %51 = icmp sgt i32 %50, 16773120
  br i1 %51, label %52, label %69

52:                                               ; preds = %44
  %53 = load %struct.list_head*, %struct.list_head** %13, align 8
  %54 = call %struct.list_head* @bfa_q_next(%struct.list_head* %53)
  store %struct.list_head* %54, %struct.list_head** %13, align 8
  %55 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %16, align 8
  %56 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %14, align 8
  %57 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @bfa_trc(%struct.bfa_fcs_s* %55, i32 %59)
  %61 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %16, align 8
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %14, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @bfa_trc(%struct.bfa_fcs_s* %61, i32 %64)
  %66 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %16, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @bfa_trc(%struct.bfa_fcs_s* %66, i32 %67)
  br label %34

69:                                               ; preds = %44
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %14, align 8
  %74 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %73, i32 0, i32 1
  %75 = call i32 @memcmp(i64* %8, i64* %74, i32 8)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %90

78:                                               ; preds = %72
  br label %85

79:                                               ; preds = %69
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %90

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  %88 = load %struct.list_head*, %struct.list_head** %13, align 8
  %89 = call %struct.list_head* @bfa_q_next(%struct.list_head* %88)
  store %struct.list_head* %89, %struct.list_head** %13, align 8
  br label %34

90:                                               ; preds = %83, %77, %42
  %91 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %16, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @bfa_trc(%struct.bfa_fcs_s* %91, i32 %92)
  %94 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %14, align 8
  %95 = icmp ne %struct.bfa_fcs_rport_s* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %14, align 8
  %98 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %6, align 8
  br label %101

100:                                              ; preds = %90
  store i64 0, i64* %6, align 8
  br label %101

101:                                              ; preds = %100, %96, %22
  %102 = load i64, i64* %6, align 8
  ret i64 %102
}

declare dso_local i32 @bfa_trc(%struct.bfa_fcs_s*, i32) #1

declare dso_local %struct.list_head* @bfa_q_first(%struct.list_head*) #1

declare dso_local i32 @bfa_ntoh3b(i32) #1

declare dso_local %struct.list_head* @bfa_q_next(%struct.list_head*) #1

declare dso_local i32 @memcmp(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
