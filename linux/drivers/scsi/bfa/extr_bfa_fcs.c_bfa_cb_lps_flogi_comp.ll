; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_cb_lps_flogi_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_cb_lps_flogi_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { i32, i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@BFA_FCS_FABRIC_SM_RETRY_OP = common dso_local global i32 0, align 4
@BFA_FCS_FABRIC_SM_CONT_OP = common dso_local global i32 0, align 4
@BFA_FCS_FABRIC_N2N = common dso_local global i32 0, align 4
@BFA_FCS_FABRIC_SM_NO_FABRIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cb_lps_flogi_comp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_fcs_fabric_s*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.bfa_fcs_fabric_s*
  store %struct.bfa_fcs_fabric_s* %9, %struct.bfa_fcs_fabric_s** %7, align 8
  %10 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(i32 %12, i32 %17)
  %19 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bfa_trc(i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %72 [
    i32 128, label %25
    i32 129, label %31
    i32 131, label %40
    i32 130, label %63
  ]

25:                                               ; preds = %3
  %26 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %81

31:                                               ; preds = %3
  %32 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %38 = load i32, i32* @BFA_FCS_FABRIC_SM_RETRY_OP, align 4
  %39 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_fabric_s* %37, i32 %38)
  br label %183

40:                                               ; preds = %3
  %41 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %41, i32 0, i32 5
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %58 [
    i32 133, label %46
    i32 132, label %52
  ]

46:                                               ; preds = %40
  %47 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %59

52:                                               ; preds = %40
  %53 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %54 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %53, i32 0, i32 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %59

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %52, %46
  %60 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %61 = load i32, i32* @BFA_FCS_FABRIC_SM_RETRY_OP, align 4
  %62 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_fabric_s* %60, i32 %61)
  br label %183

63:                                               ; preds = %3
  %64 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %65 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %70 = load i32, i32* @BFA_FCS_FABRIC_SM_RETRY_OP, align 4
  %71 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_fabric_s* %69, i32 %70)
  br label %183

72:                                               ; preds = %3
  %73 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %74 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %79 = load i32, i32* @BFA_FCS_FABRIC_SM_RETRY_OP, align 4
  %80 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_fabric_s* %78, i32 %79)
  br label %183

81:                                               ; preds = %25
  %82 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %83 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %82, i32 0, i32 5
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %88 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %90 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %93 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @bfa_trc(i32 %91, i32 %94)
  %96 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %97 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %96, i32 0, i32 5
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %81
  %103 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %104 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %103, i32 0, i32 5
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %109 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %102, %81
  %111 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %112 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %111, i32 0, i32 5
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %110
  %118 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %119 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %118, i32 0, i32 5
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %124 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  %126 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %127 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %126, i32 0, i32 5
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %132 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %134 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %133, i32 0, i32 5
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %139 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %141 = load i32, i32* @BFA_FCS_FABRIC_SM_CONT_OP, align 4
  %142 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_fabric_s* %140, i32 %141)
  br label %160

143:                                              ; preds = %110
  %144 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %145 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %144, i32 0, i32 5
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %150 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  store i32 %148, i32* %153, align 4
  %154 = load i32, i32* @BFA_FCS_FABRIC_N2N, align 4
  %155 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %156 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  %157 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %158 = load i32, i32* @BFA_FCS_FABRIC_SM_NO_FABRIC, align 4
  %159 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_fabric_s* %157, i32 %158)
  br label %160

160:                                              ; preds = %143, %117
  %161 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %162 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %165 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @bfa_trc(i32 %163, i32 %167)
  %169 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %170 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %173 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @bfa_trc(i32 %171, i32 %174)
  %176 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %177 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %7, align 8
  %180 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @bfa_trc(i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %160, %72, %63, %59, %31
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_fabric_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
