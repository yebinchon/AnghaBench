; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla25xx_copy_mqueues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla25xx_copy_mqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32, %struct.rsp_que**, %struct.req_que**, i32 }
%struct.rsp_que = type { i32, i32 }
%struct.req_que = type { i32, i32 }
%struct.qla2xxx_mqueue_chain = type { i8*, i8* }
%struct.qla2xxx_mqueue_header = type { i8*, i8*, i8* }

@DUMP_CHAIN_QUEUE = common dso_local global i32 0, align 4
@TYPE_REQUEST_QUEUE = common dso_local global i32 0, align 4
@TYPE_RESPONSE_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qla_hw_data*, i8*, i8***)* @qla25xx_copy_mqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla25xx_copy_mqueues(%struct.qla_hw_data* %0, i8* %1, i8*** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca %struct.qla2xxx_mqueue_chain*, align 8
  %9 = alloca %struct.qla2xxx_mqueue_header*, align 8
  %10 = alloca %struct.req_que*, align 8
  %11 = alloca %struct.rsp_que*, align 8
  %12 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8*** %2, i8**** %7, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %4, align 8
  br label %185

19:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %20

20:                                               ; preds = %98, %19
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %101

26:                                               ; preds = %20
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 3
  %29 = load %struct.req_que**, %struct.req_que*** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.req_que*, %struct.req_que** %29, i64 %31
  %33 = load %struct.req_que*, %struct.req_que** %32, align 8
  store %struct.req_que* %33, %struct.req_que** %10, align 8
  %34 = load %struct.req_que*, %struct.req_que** %10, align 8
  %35 = icmp ne %struct.req_que* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %101

37:                                               ; preds = %26
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.qla2xxx_mqueue_chain*
  store %struct.qla2xxx_mqueue_chain* %39, %struct.qla2xxx_mqueue_chain** %8, align 8
  %40 = load %struct.qla2xxx_mqueue_chain*, %struct.qla2xxx_mqueue_chain** %8, align 8
  %41 = getelementptr inbounds %struct.qla2xxx_mqueue_chain, %struct.qla2xxx_mqueue_chain* %40, i32 0, i32 1
  %42 = load i8***, i8**** %7, align 8
  store i8** %41, i8*** %42, align 8
  %43 = load i32, i32* @DUMP_CHAIN_QUEUE, align 4
  %44 = call i8* @htonl(i32 %43)
  %45 = load %struct.qla2xxx_mqueue_chain*, %struct.qla2xxx_mqueue_chain** %8, align 8
  %46 = getelementptr inbounds %struct.qla2xxx_mqueue_chain, %struct.qla2xxx_mqueue_chain* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.req_que*, %struct.req_que** %10, align 8
  %48 = getelementptr inbounds %struct.req_que, %struct.req_que* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = add i64 40, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @htonl(i32 %53)
  %55 = load %struct.qla2xxx_mqueue_chain*, %struct.qla2xxx_mqueue_chain** %8, align 8
  %56 = getelementptr inbounds %struct.qla2xxx_mqueue_chain, %struct.qla2xxx_mqueue_chain* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr i8, i8* %57, i64 16
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to %struct.qla2xxx_mqueue_header*
  store %struct.qla2xxx_mqueue_header* %60, %struct.qla2xxx_mqueue_header** %9, align 8
  %61 = load i32, i32* @TYPE_REQUEST_QUEUE, align 4
  %62 = call i8* @htonl(i32 %61)
  %63 = load %struct.qla2xxx_mqueue_header*, %struct.qla2xxx_mqueue_header** %9, align 8
  %64 = getelementptr inbounds %struct.qla2xxx_mqueue_header, %struct.qla2xxx_mqueue_header* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i8* @htonl(i32 %65)
  %67 = load %struct.qla2xxx_mqueue_header*, %struct.qla2xxx_mqueue_header** %9, align 8
  %68 = getelementptr inbounds %struct.qla2xxx_mqueue_header, %struct.qla2xxx_mqueue_header* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.req_que*, %struct.req_que** %10, align 8
  %70 = getelementptr inbounds %struct.req_que, %struct.req_que* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i8* @htonl(i32 %74)
  %76 = load %struct.qla2xxx_mqueue_header*, %struct.qla2xxx_mqueue_header** %9, align 8
  %77 = getelementptr inbounds %struct.qla2xxx_mqueue_header, %struct.qla2xxx_mqueue_header* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr i8, i8* %78, i64 24
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.req_que*, %struct.req_que** %10, align 8
  %82 = getelementptr inbounds %struct.req_que, %struct.req_que* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.req_que*, %struct.req_que** %10, align 8
  %85 = getelementptr inbounds %struct.req_que, %struct.req_que* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memcpy(i8* %80, i32 %83, i32 %89)
  %91 = load %struct.req_que*, %struct.req_que** %10, align 8
  %92 = getelementptr inbounds %struct.req_que, %struct.req_que* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr i8, i8* %96, i64 %95
  store i8* %97, i8** %6, align 8
  br label %98

98:                                               ; preds = %37
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %20

101:                                              ; preds = %36, %20
  store i32 1, i32* %12, align 4
  br label %102

102:                                              ; preds = %180, %101
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %105 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %183

108:                                              ; preds = %102
  %109 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %110 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %109, i32 0, i32 2
  %111 = load %struct.rsp_que**, %struct.rsp_que*** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %111, i64 %113
  %115 = load %struct.rsp_que*, %struct.rsp_que** %114, align 8
  store %struct.rsp_que* %115, %struct.rsp_que** %11, align 8
  %116 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %117 = icmp ne %struct.rsp_que* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  br label %183

119:                                              ; preds = %108
  %120 = load i8*, i8** %6, align 8
  %121 = bitcast i8* %120 to %struct.qla2xxx_mqueue_chain*
  store %struct.qla2xxx_mqueue_chain* %121, %struct.qla2xxx_mqueue_chain** %8, align 8
  %122 = load %struct.qla2xxx_mqueue_chain*, %struct.qla2xxx_mqueue_chain** %8, align 8
  %123 = getelementptr inbounds %struct.qla2xxx_mqueue_chain, %struct.qla2xxx_mqueue_chain* %122, i32 0, i32 1
  %124 = load i8***, i8**** %7, align 8
  store i8** %123, i8*** %124, align 8
  %125 = load i32, i32* @DUMP_CHAIN_QUEUE, align 4
  %126 = call i8* @htonl(i32 %125)
  %127 = load %struct.qla2xxx_mqueue_chain*, %struct.qla2xxx_mqueue_chain** %8, align 8
  %128 = getelementptr inbounds %struct.qla2xxx_mqueue_chain, %struct.qla2xxx_mqueue_chain* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %130 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = add i64 40, %133
  %135 = trunc i64 %134 to i32
  %136 = call i8* @htonl(i32 %135)
  %137 = load %struct.qla2xxx_mqueue_chain*, %struct.qla2xxx_mqueue_chain** %8, align 8
  %138 = getelementptr inbounds %struct.qla2xxx_mqueue_chain, %struct.qla2xxx_mqueue_chain* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr i8, i8* %139, i64 16
  store i8* %140, i8** %6, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = bitcast i8* %141 to %struct.qla2xxx_mqueue_header*
  store %struct.qla2xxx_mqueue_header* %142, %struct.qla2xxx_mqueue_header** %9, align 8
  %143 = load i32, i32* @TYPE_RESPONSE_QUEUE, align 4
  %144 = call i8* @htonl(i32 %143)
  %145 = load %struct.qla2xxx_mqueue_header*, %struct.qla2xxx_mqueue_header** %9, align 8
  %146 = getelementptr inbounds %struct.qla2xxx_mqueue_header, %struct.qla2xxx_mqueue_header* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i8* @htonl(i32 %147)
  %149 = load %struct.qla2xxx_mqueue_header*, %struct.qla2xxx_mqueue_header** %9, align 8
  %150 = getelementptr inbounds %struct.qla2xxx_mqueue_header, %struct.qla2xxx_mqueue_header* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %152 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i8* @htonl(i32 %156)
  %158 = load %struct.qla2xxx_mqueue_header*, %struct.qla2xxx_mqueue_header** %9, align 8
  %159 = getelementptr inbounds %struct.qla2xxx_mqueue_header, %struct.qla2xxx_mqueue_header* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** %6, align 8
  %161 = getelementptr i8, i8* %160, i64 24
  store i8* %161, i8** %6, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %164 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %167 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 4
  %171 = trunc i64 %170 to i32
  %172 = call i32 @memcpy(i8* %162, i32 %165, i32 %171)
  %173 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %174 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr i8, i8* %178, i64 %177
  store i8* %179, i8** %6, align 8
  br label %180

180:                                              ; preds = %119
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %102

183:                                              ; preds = %118, %102
  %184 = load i8*, i8** %6, align 8
  store i8* %184, i8** %4, align 8
  br label %185

185:                                              ; preds = %183, %17
  %186 = load i8*, i8** %4, align 8
  ret i8* %186
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
