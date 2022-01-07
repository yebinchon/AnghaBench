; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_rsv.c_uwb_rsv_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_rsv.c_uwb_rsv_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__, %struct.uwb_rsv_move }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.uwb_rsv_move = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"SC\00", align 1
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unhandled state: %s (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rsv_set_state(%struct.uwb_rsv* %0, i32 %1) #0 {
  %3 = alloca %struct.uwb_rsv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_rsv_move*, align 8
  store %struct.uwb_rsv* %0, %struct.uwb_rsv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %6, i32 0, i32 4
  store %struct.uwb_rsv_move* %7, %struct.uwb_rsv_move** %5, align 8
  %8 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %9 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %15 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %20 [
    i32 140, label %17
    i32 136, label %17
    i32 137, label %17
    i32 135, label %17
    i32 133, label %17
    i32 130, label %17
    i32 128, label %17
    i32 141, label %17
  ]

17:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  %18 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %19 = call i32 @uwb_rsv_stroke_timer(%struct.uwb_rsv* %18)
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %17
  br label %230

22:                                               ; preds = %2
  %23 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %24 = call i32 @uwb_rsv_dump(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.uwb_rsv* %23)
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %220 [
    i32 141, label %26
    i32 139, label %33
    i32 134, label %36
    i32 138, label %39
    i32 140, label %56
    i32 136, label %86
    i32 137, label %91
    i32 135, label %134
    i32 133, label %187
    i32 128, label %187
    i32 131, label %200
    i32 132, label %203
    i32 129, label %206
    i32 130, label %209
  ]

26:                                               ; preds = %22
  %27 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %28 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %27, i32 141)
  %29 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %30 = call i32 @uwb_rsv_remove(%struct.uwb_rsv* %29)
  %31 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %32 = call i32 @uwb_rsv_callback(%struct.uwb_rsv* %31)
  br label %230

33:                                               ; preds = %22
  %34 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %35 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %34, i32 139)
  br label %230

36:                                               ; preds = %22
  %37 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %38 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %37, i32 134)
  br label %230

39:                                               ; preds = %22
  %40 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %41 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %45 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %49 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UWB_NUM_MAS, align 4
  %53 = call i32 @bitmap_andnot(i32 %43, i32 %47, i32 %51, i32 %52)
  %54 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %55 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %54, i32 138)
  br label %230

56:                                               ; preds = %22
  %57 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %58 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 138
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %63 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 135
  br i1 %65, label %66, label %75

66:                                               ; preds = %61, %56
  %67 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %68 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %71 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %70, i32 0, i32 0
  %72 = call i32 @uwb_drp_avail_release(%struct.TYPE_9__* %69, %struct.TYPE_10__* %71)
  %73 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %74 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %66, %61
  %76 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %77 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %80 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %79, i32 0, i32 3
  %81 = call i32 @uwb_drp_avail_reserve(%struct.TYPE_9__* %78, %struct.TYPE_10__* %80)
  %82 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %83 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %82, i32 140)
  %84 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %85 = call i32 @uwb_rsv_callback(%struct.uwb_rsv* %84)
  br label %230

86:                                               ; preds = %22
  %87 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %88 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %90 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %89, i32 136)
  br label %230

91:                                               ; preds = %22
  %92 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %93 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %95 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %94, i32 0, i32 2
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %98 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %97, i32 0, i32 0
  %99 = call i32 @uwb_drp_avail_reserve(%struct.TYPE_9__* %96, %struct.TYPE_10__* %98)
  %100 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %101 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %105 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %109 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UWB_NUM_MAS, align 4
  %113 = call i32 @bitmap_or(i32 %103, i32 %107, i32 %111, i32 %112)
  %114 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %115 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %119 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %117
  store i32 %122, i32* %120, align 4
  %123 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %124 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %128 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %133 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %132, i32 137)
  br label %230

134:                                              ; preds = %22
  %135 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %136 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %140 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %144 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @UWB_NUM_MAS, align 4
  %148 = call i32 @bitmap_andnot(i32 %138, i32 %142, i32 %146, i32 %147)
  %149 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %150 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %149, i32 0, i32 1
  store i32 1, i32* %150, align 4
  %151 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %152 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %156 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  store i32 %154, i32* %157, align 4
  %158 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %159 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %163 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  %165 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %166 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %170 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @UWB_NUM_MAS, align 4
  %174 = call i32 @bitmap_copy(i32 %168, i32 %172, i32 %173)
  %175 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %176 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %180 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @UWB_NUM_MAS, align 4
  %184 = call i32 @bitmap_copy(i32 %178, i32 %182, i32 %183)
  %185 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %186 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %185, i32 135)
  br label %230

187:                                              ; preds = %22, %22
  %188 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %189 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %188, i32 0, i32 1
  store i32 0, i32* %189, align 4
  %190 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %191 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %190, i32 0, i32 2
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %194 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %193, i32 0, i32 3
  %195 = call i32 @uwb_drp_avail_reserve(%struct.TYPE_9__* %192, %struct.TYPE_10__* %194)
  %196 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %197 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %196, i32 133)
  %198 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %199 = call i32 @uwb_rsv_callback(%struct.uwb_rsv* %198)
  br label %230

200:                                              ; preds = %22
  %201 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %202 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %201, i32 131)
  br label %230

203:                                              ; preds = %22
  %204 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %205 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %204, i32 132)
  br label %230

206:                                              ; preds = %22
  %207 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %208 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %207, i32 129)
  br label %230

209:                                              ; preds = %22
  %210 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %211 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %210, i32 0, i32 1
  store i32 1, i32* %211, align 4
  %212 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %213 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %212, i32 0, i32 2
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = load %struct.uwb_rsv_move*, %struct.uwb_rsv_move** %5, align 8
  %216 = getelementptr inbounds %struct.uwb_rsv_move, %struct.uwb_rsv_move* %215, i32 0, i32 0
  %217 = call i32 @uwb_drp_avail_reserve(%struct.TYPE_9__* %214, %struct.TYPE_10__* %216)
  %218 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %219 = call i32 @uwb_rsv_state_update(%struct.uwb_rsv* %218, i32 130)
  br label %230

220:                                              ; preds = %22
  %221 = load %struct.uwb_rsv*, %struct.uwb_rsv** %3, align 8
  %222 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %221, i32 0, i32 2
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @uwb_rsv_state_str(i32 %226)
  %228 = load i32, i32* %4, align 4
  %229 = call i32 @dev_err(i32* %225, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %21, %220, %209, %206, %203, %200, %187, %134, %91, %86, %75, %39, %36, %33, %26
  ret void
}

declare dso_local i32 @uwb_rsv_stroke_timer(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_dump(i8*, %struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_state_update(%struct.uwb_rsv*, i32) #1

declare dso_local i32 @uwb_rsv_remove(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_callback(%struct.uwb_rsv*) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

declare dso_local i32 @uwb_drp_avail_release(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @uwb_drp_avail_reserve(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @uwb_rsv_state_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
