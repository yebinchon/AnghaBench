; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_get_rport_quals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_get_rport_quals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { %struct.list_head, %struct.bfa_fcs_s* }
%struct.list_head = type { i32 }
%struct.bfa_fcs_s = type { i32 }
%struct.bfa_rport_qualifier_s = type { i32, i64 }
%struct.bfa_fcs_rport_s = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_get_rport_quals(%struct.bfa_fcs_lport_s* %0, %struct.bfa_rport_qualifier_s* %1, i32* %2) #0 {
  %4 = alloca %struct.bfa_fcs_lport_s*, align 8
  %5 = alloca %struct.bfa_rport_qualifier_s*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.bfa_fcs_rport_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bfa_fcs_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %4, align 8
  store %struct.bfa_rport_qualifier_s* %1, %struct.bfa_rport_qualifier_s** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.bfa_fcs_rport_s* null, %struct.bfa_fcs_rport_s** %9, align 8
  %12 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %13 = icmp eq %struct.bfa_fcs_lport_s* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.bfa_rport_qualifier_s*, %struct.bfa_rport_qualifier_s** %5, align 8
  %16 = icmp eq %struct.bfa_rport_qualifier_s* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14, %3
  br label %110

22:                                               ; preds = %17
  %23 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %23, i32 0, i32 1
  %25 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %24, align 8
  store %struct.bfa_fcs_s* %25, %struct.bfa_fcs_s** %11, align 8
  %26 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %11, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bfa_trc(%struct.bfa_fcs_s* %26, i32 %28)
  store i32 0, i32* %10, align 4
  %30 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %30, i32 0, i32 0
  store %struct.list_head* %31, %struct.list_head** %7, align 8
  %32 = load %struct.list_head*, %struct.list_head** %7, align 8
  %33 = call %struct.list_head* @bfa_q_first(%struct.list_head* %32)
  store %struct.list_head* %33, %struct.list_head** %8, align 8
  br label %34

34:                                               ; preds = %83, %80, %53, %22
  %35 = load %struct.list_head*, %struct.list_head** %8, align 8
  %36 = load %struct.list_head*, %struct.list_head** %7, align 8
  %37 = icmp ne %struct.list_head* %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %39, %41
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i1 [ false, %34 ], [ %42, %38 ]
  br i1 %44, label %45, label %104

45:                                               ; preds = %43
  %46 = load %struct.list_head*, %struct.list_head** %8, align 8
  %47 = bitcast %struct.list_head* %46 to %struct.bfa_fcs_rport_s*
  store %struct.bfa_fcs_rport_s* %47, %struct.bfa_fcs_rport_s** %9, align 8
  %48 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %49 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bfa_ntoh3b(i32 %50)
  %52 = icmp sgt i32 %51, 16773120
  br i1 %52, label %53, label %70

53:                                               ; preds = %45
  %54 = load %struct.list_head*, %struct.list_head** %8, align 8
  %55 = call %struct.list_head* @bfa_q_next(%struct.list_head* %54)
  store %struct.list_head* %55, %struct.list_head** %8, align 8
  %56 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %11, align 8
  %57 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @bfa_trc(%struct.bfa_fcs_s* %56, i32 %60)
  %62 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %11, align 8
  %63 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %64 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bfa_trc(%struct.bfa_fcs_s* %62, i32 %65)
  %67 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %11, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @bfa_trc(%struct.bfa_fcs_s* %67, i32 %68)
  br label %34

70:                                               ; preds = %45
  %71 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %72 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %77 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.list_head*, %struct.list_head** %8, align 8
  %82 = call %struct.list_head* @bfa_q_next(%struct.list_head* %81)
  store %struct.list_head* %82, %struct.list_head** %8, align 8
  br label %34

83:                                               ; preds = %75, %70
  %84 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %85 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.bfa_rport_qualifier_s*, %struct.bfa_rport_qualifier_s** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.bfa_rport_qualifier_s, %struct.bfa_rport_qualifier_s* %87, i64 %89
  %91 = getelementptr inbounds %struct.bfa_rport_qualifier_s, %struct.bfa_rport_qualifier_s* %90, i32 0, i32 1
  store i64 %86, i64* %91, align 8
  %92 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %9, align 8
  %93 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.bfa_rport_qualifier_s*, %struct.bfa_rport_qualifier_s** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.bfa_rport_qualifier_s, %struct.bfa_rport_qualifier_s* %95, i64 %97
  %99 = getelementptr inbounds %struct.bfa_rport_qualifier_s, %struct.bfa_rport_qualifier_s* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = load %struct.list_head*, %struct.list_head** %8, align 8
  %103 = call %struct.list_head* @bfa_q_next(%struct.list_head* %102)
  store %struct.list_head* %103, %struct.list_head** %8, align 8
  br label %34

104:                                              ; preds = %43
  %105 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %11, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @bfa_trc(%struct.bfa_fcs_s* %105, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %6, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %21
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_fcs_s*, i32) #1

declare dso_local %struct.list_head* @bfa_q_first(%struct.list_head*) #1

declare dso_local i32 @bfa_ntoh3b(i32) #1

declare dso_local %struct.list_head* @bfa_q_next(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
