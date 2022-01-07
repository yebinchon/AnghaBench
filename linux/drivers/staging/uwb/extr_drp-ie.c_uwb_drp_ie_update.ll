; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-ie.c_uwb_drp_ie_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-ie.c_uwb_drp_ie_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i64, i32, %struct.uwb_ie_drp*, %struct.uwb_rsv_move, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, i32 }
%struct.uwb_ie_drp = type { i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_8__, %struct.uwb_ie_drp* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@UWB_RSV_STATE_NONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_drp_ie_update(%struct.uwb_rsv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rsv*, align 8
  %4 = alloca %struct.uwb_ie_drp*, align 8
  %5 = alloca %struct.uwb_rsv_move*, align 8
  %6 = alloca i32, align 4
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %3, align 8
  %7 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %8 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UWB_RSV_STATE_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %14 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %13, i32 0, i32 2
  %15 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %14, align 8
  %16 = call i32 @kfree(%struct.uwb_ie_drp* %15)
  %17 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %18 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %17, i32 0, i32 2
  store %struct.uwb_ie_drp* null, %struct.uwb_ie_drp** %18, align 8
  store i32 0, i32* %2, align 4
  br label %165

19:                                               ; preds = %1
  %20 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %21 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %6, align 4
  %27 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %28 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %27, i32 0, i32 2
  %29 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %28, align 8
  %30 = icmp eq %struct.uwb_ie_drp* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = call i8* (...) @uwb_drp_ie_alloc()
  %33 = bitcast i8* %32 to %struct.uwb_ie_drp*
  %34 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %35 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %34, i32 0, i32 2
  store %struct.uwb_ie_drp* %33, %struct.uwb_ie_drp** %35, align 8
  %36 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %37 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %36, i32 0, i32 2
  %38 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %37, align 8
  %39 = icmp eq %struct.uwb_ie_drp* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %165

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %46 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %45, i32 0, i32 2
  %47 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %46, align 8
  store %struct.uwb_ie_drp* %47, %struct.uwb_ie_drp** %4, align 8
  %48 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @uwb_ie_drp_set_unsafe(%struct.uwb_ie_drp* %48, i32 %49)
  %51 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %52 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %53 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @uwb_ie_drp_set_tiebreaker(%struct.uwb_ie_drp* %51, i32 %54)
  %56 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %57 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %58 = call i64 @uwb_rsv_is_owner(%struct.uwb_rsv* %57)
  %59 = call i32 @uwb_ie_drp_set_owner(%struct.uwb_ie_drp* %56, i64 %58)
  %60 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %61 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %62 = call i32 @uwb_rsv_status(%struct.uwb_rsv* %61)
  %63 = call i32 @uwb_ie_drp_set_status(%struct.uwb_ie_drp* %60, i32 %62)
  %64 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %65 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %66 = call i32 @uwb_rsv_reason_code(%struct.uwb_rsv* %65)
  %67 = call i32 @uwb_ie_drp_set_reason_code(%struct.uwb_ie_drp* %64, i32 %66)
  %68 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %69 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %70 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @uwb_ie_drp_set_stream_index(%struct.uwb_ie_drp* %68, i32 %71)
  %73 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %74 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %75 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @uwb_ie_drp_set_type(%struct.uwb_ie_drp* %73, i32 %76)
  %78 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %79 = call i64 @uwb_rsv_is_owner(%struct.uwb_rsv* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %44
  %82 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %83 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %102 [
    i32 129, label %86
    i32 128, label %95
  ]

86:                                               ; preds = %81
  %87 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %88 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %94 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %102

95:                                               ; preds = %81
  %96 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %97 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %101 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %81, %95, %86
  br label %111

103:                                              ; preds = %44
  %104 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %105 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %104, i32 0, i32 5
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %110 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %103, %102
  %112 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %113 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %114 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %113, i32 0, i32 4
  %115 = call i32 @uwb_drp_ie_from_bm(%struct.uwb_ie_drp* %112, %struct.TYPE_8__* %114)
  %116 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %117 = call i64 @uwb_rsv_has_two_drp_ies(%struct.uwb_rsv* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %162

119:                                              ; preds = %111
  %120 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %121 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %120, i32 0, i32 3
  store %struct.uwb_rsv_move* %121, %struct.uwb_rsv_move** %5, align 8
  %122 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %123 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %122, i32 0, i32 1
  %124 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %123, align 8
  %125 = icmp eq %struct.uwb_ie_drp* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %119
  %127 = call i8* (...) @uwb_drp_ie_alloc()
  %128 = bitcast i8* %127 to %struct.uwb_ie_drp*
  %129 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %130 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %129, i32 0, i32 1
  store %struct.uwb_ie_drp* %128, %struct.uwb_ie_drp** %130, align 8
  %131 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %132 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %131, i32 0, i32 1
  %133 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %132, align 8
  %134 = icmp eq %struct.uwb_ie_drp* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %165

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %119
  %140 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %141 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %140, i32 0, i32 1
  %142 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %141, align 8
  store %struct.uwb_ie_drp* %142, %struct.uwb_ie_drp** %4, align 8
  %143 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %144 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %145 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %144, i32 0, i32 2
  %146 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %145, align 8
  %147 = call i32 @memcpy(%struct.uwb_ie_drp* %143, %struct.uwb_ie_drp* %146, i32 4)
  %148 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %149 = call i32 @uwb_ie_drp_set_unsafe(%struct.uwb_ie_drp* %148, i32 1)
  %150 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %151 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %152 = call i32 @uwb_rsv_companion_status(%struct.uwb_rsv* %151)
  %153 = call i32 @uwb_ie_drp_set_status(%struct.uwb_ie_drp* %150, i32 %152)
  %154 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %155 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %156 = call i32 @uwb_rsv_companion_reason_code(%struct.uwb_rsv* %155)
  %157 = call i32 @uwb_ie_drp_set_reason_code(%struct.uwb_ie_drp* %154, i32 %156)
  %158 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %4, align 8
  %159 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %160 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %159, i32 0, i32 0
  %161 = call i32 @uwb_drp_ie_from_bm(%struct.uwb_ie_drp* %158, %struct.TYPE_8__* %160)
  br label %162

162:                                              ; preds = %139, %111
  %163 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %164 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %163, i32 0, i32 1
  store i32 1, i32* %164, align 8
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %162, %135, %40, %12
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @kfree(%struct.uwb_ie_drp*) #1

declare dso_local i8* @uwb_drp_ie_alloc(...) #1

declare dso_local i32 @uwb_ie_drp_set_unsafe(%struct.uwb_ie_drp*, i32) #1

declare dso_local i32 @uwb_ie_drp_set_tiebreaker(%struct.uwb_ie_drp*, i32) #1

declare dso_local i32 @uwb_ie_drp_set_owner(%struct.uwb_ie_drp*, i64) #1

declare dso_local i64 @uwb_rsv_is_owner(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_ie_drp_set_status(%struct.uwb_ie_drp*, i32) #1

declare dso_local i32 @uwb_rsv_status(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_ie_drp_set_reason_code(%struct.uwb_ie_drp*, i32) #1

declare dso_local i32 @uwb_rsv_reason_code(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_ie_drp_set_stream_index(%struct.uwb_ie_drp*, i32) #1

declare dso_local i32 @uwb_ie_drp_set_type(%struct.uwb_ie_drp*, i32) #1

declare dso_local i32 @uwb_drp_ie_from_bm(%struct.uwb_ie_drp*, %struct.TYPE_8__*) #1

declare dso_local i64 @uwb_rsv_has_two_drp_ies(%struct.uwb_rsv*) #1

declare dso_local i32 @memcpy(%struct.uwb_ie_drp*, %struct.uwb_ie_drp*, i32) #1

declare dso_local i32 @uwb_rsv_companion_status(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_companion_reason_code(%struct.uwb_rsv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
