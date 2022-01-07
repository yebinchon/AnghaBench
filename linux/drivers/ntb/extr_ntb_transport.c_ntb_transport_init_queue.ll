; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, i64, %struct.TYPE_2__*, i32, %struct.ntb_transport_qp* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ntb_transport_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i64, i64, i64, i32*, i32, %struct.ntb_transport_ctx* }

@max_mw_size = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@transport_mtu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"qp%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@ntb_qp_debugfs_stats = common dso_local global i32 0, align 4
@ntb_qp_link_work = common dso_local global i32 0, align 4
@ntb_qp_link_cleanup_work = common dso_local global i32 0, align 4
@ntb_transport_rxc_db = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_ctx*, i32)* @ntb_transport_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_transport_init_queue(%struct.ntb_transport_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_transport_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i8], align 1
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @QP_TO_MW(%struct.ntb_transport_ctx* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %25, i32 0, i32 5
  %27 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %27, i64 %29
  store %struct.ntb_transport_qp* %30, %struct.ntb_transport_qp** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %33 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %35 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %36 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %35, i32 0, i32 21
  store %struct.ntb_transport_ctx* %34, %struct.ntb_transport_ctx** %36, align 8
  %37 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %41 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %40, i32 0, i32 20
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %43 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %45 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %44, i32 0, i32 19
  store i32* null, i32** %45, align 8
  %46 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %47 = call i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp* %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = urem i32 %49, %50
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %2
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = udiv i32 %54, %55
  %57 = add i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %62

58:                                               ; preds = %2
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = udiv i32 %59, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %7, align 8
  %71 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* @max_mw_size, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %62
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @max_mw_size, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* @max_mw_size, align 8
  store i64 %86, i64* %8, align 8
  br label %87

87:                                               ; preds = %85, %81, %62
  %88 = load i64, i64* %8, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %9, align 4
  %91 = udiv i32 %89, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %12, align 4
  %95 = udiv i32 %93, %94
  %96 = mul i32 %92, %95
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %99 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %101 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %112 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %111, i32 0, i32 16
  store i64 %110, i64* %112, align 8
  %113 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %114 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %113, i32 0, i32 16
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %87
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %221

120:                                              ; preds = %87
  %121 = load i64, i64* %7, align 8
  %122 = load i32, i32* %14, align 4
  %123 = zext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %126 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %125, i32 0, i32 18
  store i64 %124, i64* %126, align 8
  %127 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %128 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %127, i32 0, i32 18
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %120
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %221

134:                                              ; preds = %120
  %135 = load i32, i32* %10, align 4
  %136 = zext i32 %135 to i64
  %137 = sub i64 %136, 4
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %10, align 4
  %139 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %140 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %139, i32 0, i32 16
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = zext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %146 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %145, i32 0, i32 17
  store i64 %144, i64* %146, align 8
  %147 = load i32, i32* @transport_mtu, align 4
  %148 = load i32, i32* %10, align 4
  %149 = udiv i32 %148, 2
  %150 = call i32 @min(i32 %147, i32 %149)
  %151 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %152 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %155 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = udiv i32 %153, %156
  %158 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %159 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %161 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %183

164:                                              ; preds = %134
  %165 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @snprintf(i8* %165, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %169 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %170 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32* @debugfs_create_dir(i8* %168, i64 %171)
  %173 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %174 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %173, i32 0, i32 15
  store i32* %172, i32** %174, align 8
  %175 = load i32, i32* @S_IRUSR, align 4
  %176 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %177 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %176, i32 0, i32 15
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %180 = call i32* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %175, i32* %178, %struct.ntb_transport_qp* %179, i32* @ntb_qp_debugfs_stats)
  %181 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %182 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %181, i32 0, i32 14
  store i32* %180, i32** %182, align 8
  br label %188

183:                                              ; preds = %134
  %184 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %185 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %184, i32 0, i32 15
  store i32* null, i32** %185, align 8
  %186 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %187 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %186, i32 0, i32 14
  store i32* null, i32** %187, align 8
  br label %188

188:                                              ; preds = %183, %164
  %189 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %190 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %189, i32 0, i32 13
  %191 = load i32, i32* @ntb_qp_link_work, align 4
  %192 = call i32 @INIT_DELAYED_WORK(i32* %190, i32 %191)
  %193 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %194 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %193, i32 0, i32 12
  %195 = load i32, i32* @ntb_qp_link_cleanup_work, align 4
  %196 = call i32 @INIT_WORK(i32* %194, i32 %195)
  %197 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %198 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %197, i32 0, i32 11
  %199 = call i32 @spin_lock_init(i32* %198)
  %200 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %201 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %200, i32 0, i32 10
  %202 = call i32 @spin_lock_init(i32* %201)
  %203 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %204 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %203, i32 0, i32 9
  %205 = call i32 @INIT_LIST_HEAD(i32* %204)
  %206 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %207 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %206, i32 0, i32 8
  %208 = call i32 @INIT_LIST_HEAD(i32* %207)
  %209 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %210 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %209, i32 0, i32 7
  %211 = call i32 @INIT_LIST_HEAD(i32* %210)
  %212 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %213 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %212, i32 0, i32 6
  %214 = call i32 @INIT_LIST_HEAD(i32* %213)
  %215 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %216 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %215, i32 0, i32 5
  %217 = load i32, i32* @ntb_transport_rxc_db, align 4
  %218 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %219 = ptrtoint %struct.ntb_transport_qp* %218 to i64
  %220 = call i32 @tasklet_init(i32* %216, i32 %217, i64 %219)
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %188, %131, %117
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @QP_TO_MW(%struct.ntb_transport_ctx*, i32) #1

declare dso_local i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @debugfs_create_dir(i8*, i64) #1

declare dso_local i32* @debugfs_create_file(i8*, i32, i32*, %struct.ntb_transport_qp*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
