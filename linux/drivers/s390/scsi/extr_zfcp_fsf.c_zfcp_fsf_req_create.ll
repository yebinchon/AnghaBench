; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i64, %struct.TYPE_8__*, i32, %struct.zfcp_adapter*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }
%struct.zfcp_adapter = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.zfcp_qdio = type { %struct.zfcp_adapter* }

@ENOMEM = common dso_local global i32 0, align 4
@FSF_QTCB_UNSOLICITED_STATUS = common dso_local global i64 0, align 8
@fsf_qtcb_type = common dso_local global i32* null, align 8
@FSF_QTCB_CURRENT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_fsf_req* (%struct.zfcp_qdio*, i64, i32, i32*)* @zfcp_fsf_req_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.zfcp_fsf_req*, align 8
  %6 = alloca %struct.zfcp_qdio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.zfcp_adapter*, align 8
  %11 = alloca %struct.zfcp_fsf_req*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %13 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %12, i32 0, i32 0
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %13, align 8
  store %struct.zfcp_adapter* %14, %struct.zfcp_adapter** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call %struct.zfcp_fsf_req* @zfcp_fsf_alloc(i32* %15)
  store %struct.zfcp_fsf_req* %16, %struct.zfcp_fsf_req** %11, align 8
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %18 = icmp ne %struct.zfcp_fsf_req* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.zfcp_fsf_req* @ERR_PTR(i32 %25)
  store %struct.zfcp_fsf_req* %26, %struct.zfcp_fsf_req** %5, align 8
  br label %161

27:                                               ; preds = %4
  %28 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %29 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %34 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %39 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %38, i32 0, i32 6
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %42 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %41, i32 0, i32 5
  %43 = call i32 @timer_setup(i32* %42, i32* null, i32 0)
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %45 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %44, i32 0, i32 4
  %46 = call i32 @init_completion(i32* %45)
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %49 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %48, i32 0, i32 3
  store %struct.zfcp_adapter* %47, %struct.zfcp_adapter** %49, align 8
  %50 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %51 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %54 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @FSF_QTCB_UNSOLICITED_STATUS, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %146

61:                                               ; preds = %37
  %62 = load i32*, i32** %9, align 8
  %63 = ptrtoint i32* %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %68 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i8* @zfcp_fsf_qtcb_alloc(i32* %70)
  %72 = bitcast i8* %71 to %struct.TYPE_8__*
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 1
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %74, align 8
  br label %80

75:                                               ; preds = %61
  %76 = call i8* @zfcp_fsf_qtcb_alloc(i32* null)
  %77 = bitcast i8* %76 to %struct.TYPE_8__*
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %79 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %78, i32 0, i32 1
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %79, align 8
  br label %80

80:                                               ; preds = %75, %66
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %82 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %91 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  %94 = call %struct.zfcp_fsf_req* @ERR_PTR(i32 %93)
  store %struct.zfcp_fsf_req* %94, %struct.zfcp_fsf_req** %5, align 8
  br label %161

95:                                               ; preds = %80
  %96 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %97 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %100 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  store i32 %98, i32* %103, align 4
  %104 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %105 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %108 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i64 %106, i64* %111, align 8
  %112 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %113 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i32 26, i32* %116, align 8
  %117 = load i32*, i32** @fsf_qtcb_type, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %122 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  store i32 %120, i32* %125, align 8
  %126 = load i32, i32* @FSF_QTCB_CURRENT_VERSION, align 4
  %127 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %128 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  store i32 %126, i32* %131, align 4
  %132 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %133 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %136 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i64 %134, i64* %139, align 8
  %140 = load i64, i64* %7, align 8
  %141 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %142 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i64 %140, i64* %145, align 8
  br label %146

146:                                              ; preds = %95, %37
  %147 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %148 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %151 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %150, i32 0, i32 2
  %152 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %153 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %157 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %156, i32 0, i32 1
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = call i32 @zfcp_qdio_req_init(i32 %149, i32* %151, i64 %154, i32 %155, %struct.TYPE_8__* %158, i32 4)
  %160 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  store %struct.zfcp_fsf_req* %160, %struct.zfcp_fsf_req** %5, align 8
  br label %161

161:                                              ; preds = %146, %89, %23
  %162 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  ret %struct.zfcp_fsf_req* %162
}

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_alloc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.zfcp_fsf_req* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @zfcp_fsf_qtcb_alloc(i32*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_qdio_req_init(i32, i32*, i64, i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
