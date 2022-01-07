; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_coda_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_coda_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_comm = type { i32, i32, i32, i32, i64 }
%union.inputArgs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%union.outputArgs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.upc_req = type { i32, i32, i32, i32, i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Venus dead, not sending upcall\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CODA_REQ_ASYNC = common dso_local global i32 0, align 4
@CODA_REQ_WRITE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@CODA_REQ_ABORT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected interruption.\0A\00", align 1
@CODA_REQ_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Venus dead, not sending signal.\0A\00", align 1
@CODA_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_comm*, i32, i32*, %union.inputArgs*)* @coda_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_upcall(%struct.venus_comm* %0, i32 %1, i32* %2, %union.inputArgs* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.venus_comm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %union.inputArgs*, align 8
  %10 = alloca %union.outputArgs*, align 8
  %11 = alloca %union.inputArgs*, align 8
  %12 = alloca %struct.upc_req*, align 8
  %13 = alloca %struct.upc_req*, align 8
  %14 = alloca i32, align 4
  store %struct.venus_comm* %0, %struct.venus_comm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %union.inputArgs* %3, %union.inputArgs** %9, align 8
  store %struct.upc_req* null, %struct.upc_req** %12, align 8
  %15 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %16 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %19 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = call i32 @pr_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  br label %220

26:                                               ; preds = %4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.upc_req* @kmalloc(i32 40, i32 %27)
  store %struct.upc_req* %28, %struct.upc_req** %12, align 8
  %29 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %30 = icmp ne %struct.upc_req* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %14, align 4
  br label %220

34:                                               ; preds = %26
  %35 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %36 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %40 = bitcast %union.inputArgs* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %43 = bitcast %union.inputArgs* %42 to i8*
  %44 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %45 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @CODA_REQ_ASYNC, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 0, %48 ], [ %50, %49 ]
  %53 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %54 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %57 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  br label %69

67:                                               ; preds = %60, %51
  %68 = load i32, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  %71 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %72 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %74 = bitcast %union.inputArgs* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %78 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %80 = bitcast %union.inputArgs* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %84 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  %85 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %86 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %85, i32 0, i32 7
  %87 = call i32 @init_waitqueue_head(i32* %86)
  %88 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %89 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %88, i32 0, i32 3
  %90 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %91 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %90, i32 0, i32 2
  %92 = call i32 @list_add_tail(i32* %89, i32* %91)
  %93 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %94 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %93, i32 0, i32 1
  %95 = call i32 @wake_up_interruptible(i32* %94)
  %96 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %97 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CODA_REQ_ASYNC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %69
  %103 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %104 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  store i32 0, i32* %5, align 4
  br label %227

106:                                              ; preds = %69
  %107 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %108 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %109 = call i32 @coda_waitfor_upcall(%struct.venus_comm* %107, %struct.upc_req* %108)
  %110 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %111 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CODA_REQ_WRITE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %106
  %117 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %118 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = bitcast i8* %119 to %union.outputArgs*
  store %union.outputArgs* %120, %union.outputArgs** %10, align 8
  %121 = load %union.outputArgs*, %union.outputArgs** %10, align 8
  %122 = bitcast %union.outputArgs* %121 to %struct.TYPE_3__*
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %14, align 4
  %126 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %127 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %8, align 8
  store i32 %128, i32* %129, align 4
  br label %220

130:                                              ; preds = %106
  %131 = load i32, i32* @EINTR, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %14, align 4
  %133 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %134 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CODA_REQ_ABORT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %130
  %140 = load i32, i32* @current, align 4
  %141 = call i32 @signal_pending(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139, %130
  %144 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %220

145:                                              ; preds = %139
  %146 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %147 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CODA_REQ_READ, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %145
  br label %220

153:                                              ; preds = %145
  %154 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %155 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %220

160:                                              ; preds = %153
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call %struct.upc_req* @kmalloc(i32 40, i32 %163)
  store %struct.upc_req* %164, %struct.upc_req** %13, align 8
  %165 = load %struct.upc_req*, %struct.upc_req** %13, align 8
  %166 = icmp ne %struct.upc_req* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  br label %220

168:                                              ; preds = %160
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = call %union.inputArgs* @kvzalloc(i32 4, i32 %169)
  store %union.inputArgs* %170, %union.inputArgs** %11, align 8
  %171 = load %union.inputArgs*, %union.inputArgs** %11, align 8
  %172 = icmp ne %union.inputArgs* %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = load %struct.upc_req*, %struct.upc_req** %13, align 8
  %175 = call i32 @kfree(%struct.upc_req* %174)
  br label %220

176:                                              ; preds = %168
  %177 = load i32, i32* @EINTR, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* @CODA_SIGNAL, align 4
  %180 = load %union.inputArgs*, %union.inputArgs** %11, align 8
  %181 = bitcast %union.inputArgs* %180 to %struct.TYPE_4__*
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 8
  %183 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %184 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load %union.inputArgs*, %union.inputArgs** %11, align 8
  %187 = bitcast %union.inputArgs* %186 to %struct.TYPE_4__*
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  store i64 %185, i64* %188, align 8
  %189 = load i32, i32* @CODA_REQ_ASYNC, align 4
  %190 = load %struct.upc_req*, %struct.upc_req** %13, align 8
  %191 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %union.inputArgs*, %union.inputArgs** %11, align 8
  %193 = bitcast %union.inputArgs* %192 to %struct.TYPE_4__*
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.upc_req*, %struct.upc_req** %13, align 8
  %197 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 8
  %198 = load %union.inputArgs*, %union.inputArgs** %11, align 8
  %199 = bitcast %union.inputArgs* %198 to %struct.TYPE_4__*
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.upc_req*, %struct.upc_req** %13, align 8
  %203 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %202, i32 0, i32 5
  store i64 %201, i64* %203, align 8
  %204 = load %union.inputArgs*, %union.inputArgs** %11, align 8
  %205 = bitcast %union.inputArgs* %204 to i8*
  %206 = load %struct.upc_req*, %struct.upc_req** %13, align 8
  %207 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %206, i32 0, i32 4
  store i8* %205, i8** %207, align 8
  %208 = load %struct.upc_req*, %struct.upc_req** %13, align 8
  %209 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %208, i32 0, i32 1
  store i32 4, i32* %209, align 4
  %210 = load %struct.upc_req*, %struct.upc_req** %13, align 8
  %211 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %210, i32 0, i32 2
  store i32 4, i32* %211, align 8
  %212 = load %struct.upc_req*, %struct.upc_req** %13, align 8
  %213 = getelementptr inbounds %struct.upc_req, %struct.upc_req* %212, i32 0, i32 3
  %214 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %215 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %214, i32 0, i32 2
  %216 = call i32 @list_add(i32* %213, i32* %215)
  %217 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %218 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %217, i32 0, i32 1
  %219 = call i32 @wake_up_interruptible(i32* %218)
  br label %220

220:                                              ; preds = %176, %173, %167, %158, %152, %143, %116, %31, %22
  %221 = load %struct.upc_req*, %struct.upc_req** %12, align 8
  %222 = call i32 @kfree(%struct.upc_req* %221)
  %223 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %224 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %223, i32 0, i32 0
  %225 = call i32 @mutex_unlock(i32* %224)
  %226 = load i32, i32* %14, align 4
  store i32 %226, i32* %5, align 4
  br label %227

227:                                              ; preds = %220, %102
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local %struct.upc_req* @kmalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @coda_waitfor_upcall(%struct.venus_comm*, %struct.upc_req*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %union.inputArgs* @kvzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.upc_req*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
