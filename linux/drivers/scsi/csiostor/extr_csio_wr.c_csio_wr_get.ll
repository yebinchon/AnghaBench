; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_wr_pair = type { i64, i64, i32*, i8* }
%struct.csio_wrm = type { i32, %struct.csio_q** }
%struct.csio_q = type { i64, i32, i32, i32, i32*, i64, i32* }
%struct.csio_qstatus_page = type { i32 }

@CSIO_QCREDIT_SZ = common dso_local global i64 0, align 8
@n_qempty = common dso_local global i32 0, align 4
@n_qfull = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@n_qwrap = common dso_local global i32 0, align 4
@n_eq_wr_split = common dso_local global i32 0, align 4
@n_tot_reqs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_wr_get(%struct.csio_hw* %0, i32 %1, i64 %2, %struct.csio_wr_pair* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.csio_wr_pair*, align 8
  %10 = alloca %struct.csio_wrm*, align 8
  %11 = alloca %struct.csio_q*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.csio_qstatus_page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.csio_wr_pair* %3, %struct.csio_wr_pair** %9, align 8
  %19 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %20 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %19)
  store %struct.csio_wrm* %20, %struct.csio_wrm** %10, align 8
  %21 = load %struct.csio_wrm*, %struct.csio_wrm** %10, align 8
  %22 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %21, i32 0, i32 1
  %23 = load %struct.csio_q**, %struct.csio_q*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.csio_q*, %struct.csio_q** %23, i64 %25
  %27 = load %struct.csio_q*, %struct.csio_q** %26, align 8
  store %struct.csio_q* %27, %struct.csio_q** %11, align 8
  %28 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %29 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = ptrtoint i32* %30 to i64
  %32 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %33 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CSIO_QCREDIT_SZ, align 8
  %36 = mul i64 %34, %35
  %37 = add i64 %31, %36
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %12, align 8
  %39 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %40 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.csio_qstatus_page*
  store %struct.csio_qstatus_page* %42, %struct.csio_qstatus_page** %13, align 8
  %43 = load %struct.csio_qstatus_page*, %struct.csio_qstatus_page** %13, align 8
  %44 = getelementptr inbounds %struct.csio_qstatus_page, %struct.csio_qstatus_page* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  %47 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %48 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  store i32 %46, i32* %14, align 4
  %49 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %50 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @CSIO_QCREDIT_SZ, align 8
  %55 = call i64 @ALIGN(i64 %53, i64 %54)
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* @CSIO_QCREDIT_SZ, align 8
  %58 = udiv i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %17, align 4
  %60 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %61 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @CSIO_DB_ASSERT(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.csio_wrm*, %struct.csio_wrm** %10, align 8
  %71 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br label %74

74:                                               ; preds = %68, %4
  %75 = phi i1 [ false, %4 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @CSIO_DB_ASSERT(i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %80 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp sle i32 %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @CSIO_DB_ASSERT(i32 %83)
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %74
  %89 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %90 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %91, %94
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %18, align 4
  br label %114

97:                                               ; preds = %74
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %18, align 4
  br label %113

106:                                              ; preds = %97
  %107 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %108 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %18, align 4
  %110 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %111 = load i32, i32* @n_qempty, align 4
  %112 = call i32 @CSIO_INC_STATS(%struct.csio_q* %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %101
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117, %114
  %122 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %123 = load i32, i32* @n_qfull, align 4
  %124 = call i32 @CSIO_INC_STATS(%struct.csio_q* %122, i32 %123)
  %125 = load i32, i32* @EBUSY, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %222

127:                                              ; preds = %117
  %128 = load i8*, i8** %12, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load i64, i64* %16, align 8
  %131 = add i64 %129, %130
  %132 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %133 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = icmp ugt i64 %131, %134
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %180

139:                                              ; preds = %127
  %140 = load i8*, i8** %12, align 8
  %141 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %142 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %144 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = ptrtoint i8* %146 to i64
  %148 = sub i64 %145, %147
  %149 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %150 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %152 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %155 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %154, i32 0, i32 2
  store i32* %153, i32** %155, align 8
  %156 = load i64, i64* %16, align 8
  %157 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %158 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub i64 %156, %159
  %161 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %162 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %164 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @CSIO_QCREDIT_SZ, align 8
  %167 = call i64 @ALIGN(i64 %165, i64 %166)
  %168 = load i64, i64* @CSIO_QCREDIT_SZ, align 8
  %169 = udiv i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = sext i32 %170 to i64
  %172 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %173 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %175 = load i32, i32* @n_qwrap, align 4
  %176 = call i32 @CSIO_INC_STATS(%struct.csio_q* %174, i32 %175)
  %177 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %178 = load i32, i32* @n_eq_wr_split, align 4
  %179 = call i32 @CSIO_INC_STATS(%struct.csio_q* %177, i32 %178)
  br label %215

180:                                              ; preds = %127
  %181 = load i8*, i8** %12, align 8
  %182 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %183 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  %184 = load i64, i64* %16, align 8
  %185 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %186 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %188 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %187, i32 0, i32 2
  store i32* null, i32** %188, align 8
  %189 = load %struct.csio_wr_pair*, %struct.csio_wr_pair** %9, align 8
  %190 = getelementptr inbounds %struct.csio_wr_pair, %struct.csio_wr_pair* %189, i32 0, i32 1
  store i64 0, i64* %190, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %194 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %195, %192
  store i64 %196, i64* %194, align 8
  %197 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %198 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %201 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp eq i64 %199, %203
  %205 = zext i1 %204 to i32
  %206 = call i64 @unlikely(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %180
  %209 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %210 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  %211 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %212 = load i32, i32* @n_qwrap, align 4
  %213 = call i32 @CSIO_INC_STATS(%struct.csio_q* %211, i32 %212)
  br label %214

214:                                              ; preds = %208, %180
  br label %215

215:                                              ; preds = %214, %139
  %216 = load i32, i32* %17, align 4
  %217 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %218 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  %219 = load %struct.csio_q*, %struct.csio_q** %11, align 8
  %220 = load i32, i32* @n_tot_reqs, align 4
  %221 = call i32 @CSIO_INC_STATS(%struct.csio_q* %219, i32 %220)
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %215, %121
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_q*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
