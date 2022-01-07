; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_em_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_em_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, i64, i32, i64, i32, %struct.fc_lport*, %struct.fc_exch_pool*, %struct.fc_exch_mgr*, i64, i64, i32, i32, i32 }
%struct.fc_exch_pool = type { i64, i64, i32, i32, i32, i32 }
%struct.fc_lport = type { i32 }
%struct.fc_exch_mgr = type { i32, i32, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@fc_cpu_order = common dso_local global i32 0, align 4
@FC_FC_FIRST_SEQ = common dso_local global i32 0, align 4
@fc_exch_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_exch* (%struct.fc_lport*, %struct.fc_exch_mgr*)* @fc_exch_em_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_exch* @fc_exch_em_alloc(%struct.fc_lport* %0, %struct.fc_exch_mgr* %1) #0 {
  %3 = alloca %struct.fc_exch*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_exch_mgr*, align 8
  %6 = alloca %struct.fc_exch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fc_exch_pool*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_exch_mgr* %1, %struct.fc_exch_mgr** %5, align 8
  %10 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %11 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.fc_exch* @mempool_alloc(i32 %12, i32 %13)
  store %struct.fc_exch* %14, %struct.fc_exch** %6, align 8
  %15 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %16 = icmp ne %struct.fc_exch* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %19 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @atomic_inc(i32* %20)
  br label %198

22:                                               ; preds = %2
  %23 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %24 = call i32 @memset(%struct.fc_exch* %23, i32 0, i32 96)
  %25 = call i32 (...) @get_cpu()
  store i32 %25, i32* %7, align 4
  %26 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %27 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.fc_exch_pool* @per_cpu_ptr(i32 %28, i32 %29)
  store %struct.fc_exch_pool* %30, %struct.fc_exch_pool** %9, align 8
  %31 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %32 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = call i32 (...) @put_cpu()
  %35 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %36 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %22
  %41 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %42 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %43 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @fc_exch_ptr_get(%struct.fc_exch_pool* %41, i32 %45)
  %47 = call i32 @WARN_ON(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %51 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %55 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %56 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %124

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %22
  %59 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %60 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %66 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %67 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i64 @fc_exch_ptr_get(%struct.fc_exch_pool* %65, i32 %69)
  %71 = call i32 @WARN_ON(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %64
  %74 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %75 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %79 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %80 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %124

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %58
  %83 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %84 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %109, %82
  %87 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @fc_exch_ptr_get(%struct.fc_exch_pool* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %94 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  br label %101

101:                                              ; preds = %98, %97
  %102 = phi i32 [ 0, %97 ], [ %100, %98 ]
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %105 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %200

109:                                              ; preds = %101
  br label %86

110:                                              ; preds = %86
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %113 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %120

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  br label %120

120:                                              ; preds = %117, %116
  %121 = phi i32 [ 0, %116 ], [ %119, %117 ]
  %122 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %123 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %120, %73, %49
  %125 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %126 = call i32 @fc_exch_hold(%struct.fc_exch* %125)
  %127 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %128 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %127, i32 0, i32 13
  %129 = call i32 @spin_lock_init(i32* %128)
  %130 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %131 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %130, i32 0, i32 13
  %132 = call i32 @spin_lock_bh(i32* %131)
  %133 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %136 = call i32 @fc_exch_ptr_set(%struct.fc_exch_pool* %133, i32 %134, %struct.fc_exch* %135)
  %137 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %138 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %137, i32 0, i32 12
  %139 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %140 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %139, i32 0, i32 5
  %141 = call i32 @list_add_tail(i32* %138, i32* %140)
  %142 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %143 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %144 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = call i32 @fc_seq_alloc(%struct.fc_exch* %142, i32 %145)
  %148 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %149 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %153 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %152, i32 0, i32 3
  %154 = call i32 @spin_unlock_bh(i32* %153)
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @fc_cpu_order, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* %7, align 4
  %159 = or i32 %157, %158
  %160 = zext i32 %159 to i64
  %161 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %162 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %160, %163
  %165 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %166 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %165, i32 0, i32 9
  store i64 %164, i64* %166, align 8
  %167 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %168 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %167, i32 0, i32 10
  store i64 %164, i64* %168, align 8
  %169 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %170 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %171 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %170, i32 0, i32 8
  store %struct.fc_exch_mgr* %169, %struct.fc_exch_mgr** %171, align 8
  %172 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %173 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %174 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %173, i32 0, i32 7
  store %struct.fc_exch_pool* %172, %struct.fc_exch_pool** %174, align 8
  %175 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %176 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %177 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %176, i32 0, i32 6
  store %struct.fc_lport* %175, %struct.fc_lport** %177, align 8
  %178 = load i32, i32* @FC_FC_FIRST_SEQ, align 4
  %179 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %180 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  %181 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %182 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %183 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %182, i32 0, i32 4
  store i64 %181, i64* %183, align 8
  %184 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %185 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %188 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 8
  %189 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %190 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %189, i32 0, i32 2
  store i64 0, i64* %190, align 8
  %191 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %192 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %191, i32 0, i32 1
  %193 = call i32 @init_waitqueue_head(i32* %192)
  %194 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %195 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %194, i32 0, i32 0
  %196 = load i32, i32* @fc_exch_timeout, align 4
  %197 = call i32 @INIT_DELAYED_WORK(i32* %195, i32 %196)
  br label %198

198:                                              ; preds = %124, %17
  %199 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  store %struct.fc_exch* %199, %struct.fc_exch** %3, align 8
  br label %213

200:                                              ; preds = %108
  %201 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %202 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %201, i32 0, i32 3
  %203 = call i32 @spin_unlock_bh(i32* %202)
  %204 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %205 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = call i32 @atomic_inc(i32* %206)
  %208 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %209 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %210 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @mempool_free(%struct.fc_exch* %208, i32 %211)
  store %struct.fc_exch* null, %struct.fc_exch** %3, align 8
  br label %213

213:                                              ; preds = %200, %198
  %214 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  ret %struct.fc_exch* %214
}

declare dso_local %struct.fc_exch* @mempool_alloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(%struct.fc_exch*, i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.fc_exch_pool* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i64 @fc_exch_ptr_get(%struct.fc_exch_pool*, i32) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @fc_exch_ptr_set(%struct.fc_exch_pool*, i32, %struct.fc_exch*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @fc_seq_alloc(%struct.fc_exch*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mempool_free(%struct.fc_exch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
