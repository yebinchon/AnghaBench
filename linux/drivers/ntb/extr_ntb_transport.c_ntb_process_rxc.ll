; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_process_rxc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_process_rxc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ntb_payload_header = type { i64, i32, i32 }
%struct.ntb_queue_entry = type { i32, i32, i32, %struct.ntb_payload_header* }

@.str = private unnamed_addr constant [34 x i8] c"qp %d: RX ver %u len %d flags %x\0A\00", align 1
@DESC_DONE_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"done flag not set\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@LINK_DOWN_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"link down flag set\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"version mismatch, expected %llu - got %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"no receive buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"receive buffer overflow! Wanted %d got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"RX OK index %u ver %u size %d into buf size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_qp*)* @ntb_process_rxc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_process_rxc(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_transport_qp*, align 8
  %4 = alloca %struct.ntb_payload_header*, align 8
  %5 = alloca %struct.ntb_queue_entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %3, align 8
  %7 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %8 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %7, i32 0, i32 14
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %9, i64 %17
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %19, i64 %23
  %25 = getelementptr i8, i8* %24, i64 -16
  %26 = bitcast i8* %25 to %struct.ntb_payload_header*
  store %struct.ntb_payload_header* %26, %struct.ntb_payload_header** %4, align 8
  %27 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %27, i32 0, i32 6
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %37 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %40 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %43 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %38, i32 %41, i32 %44)
  %46 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %47 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DESC_DONE_FLAG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %1
  %53 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %54 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %53, i32 0, i32 6
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %61 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %235

66:                                               ; preds = %1
  %67 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %68 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @LINK_DOWN_FLAG, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %75 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %74, i32 0, i32 6
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %82 = call i32 @ntb_qp_link_down(%struct.ntb_transport_qp* %81)
  %83 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %84 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %83, i32 0, i32 2
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %235

87:                                               ; preds = %66
  %88 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %89 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %92 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %87
  %96 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %97 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %96, i32 0, i32 6
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %103 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %106 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %104, i64 %107)
  %109 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %110 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %109, i32 0, i32 12
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %235

115:                                              ; preds = %87
  %116 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %117 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %116, i32 0, i32 11
  %118 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %119 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %118, i32 0, i32 10
  %120 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %121 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %120, i32 0, i32 9
  %122 = call %struct.ntb_queue_entry* @ntb_list_mv(i32* %117, i32* %119, i32* %121)
  store %struct.ntb_queue_entry* %122, %struct.ntb_queue_entry** %5, align 8
  %123 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %124 = icmp ne %struct.ntb_queue_entry* %123, null
  br i1 %124, label %139, label %125

125:                                              ; preds = %115
  %126 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %127 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %126, i32 0, i32 6
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %133 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %134 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @EAGAIN, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %235

139:                                              ; preds = %115
  %140 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %141 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %142 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %141, i32 0, i32 3
  store %struct.ntb_payload_header* %140, %struct.ntb_payload_header** %142, align 8
  %143 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %144 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %147 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %149 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %152 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %139
  %156 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %157 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %156, i32 0, i32 6
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %163 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %166 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %167)
  %169 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %170 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  %175 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %176 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @DESC_DONE_FLAG, align 4
  %178 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %179 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %183 = call i32 @ntb_complete_rxc(%struct.ntb_transport_qp* %182)
  br label %223

184:                                              ; preds = %139
  %185 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %186 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %185, i32 0, i32 6
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %192 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %195 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %198 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %201 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %190, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %193, i64 %196, i32 %199, i32 %202)
  %204 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %205 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %208 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %212 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %212, align 8
  %215 = load %struct.ntb_payload_header*, %struct.ntb_payload_header** %4, align 8
  %216 = getelementptr inbounds %struct.ntb_payload_header, %struct.ntb_payload_header* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %219 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %221 = load i8*, i8** %6, align 8
  %222 = call i32 @ntb_async_rx(%struct.ntb_queue_entry* %220, i8* %221)
  br label %223

223:                                              ; preds = %184, %155
  %224 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %225 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  %228 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %229 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %232 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = srem i32 %233, %230
  store i32 %234, i32* %232, align 4
  store i32 0, i32* %2, align 4
  br label %235

235:                                              ; preds = %223, %125, %95, %73, %52
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ntb_qp_link_down(%struct.ntb_transport_qp*) #1

declare dso_local %struct.ntb_queue_entry* @ntb_list_mv(i32*, i32*, i32*) #1

declare dso_local i32 @ntb_complete_rxc(%struct.ntb_transport_qp*) #1

declare dso_local i32 @ntb_async_rx(%struct.ntb_queue_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
