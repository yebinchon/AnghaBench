; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rx.c_cvm_oct_check_rcv_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rx.c_cvm_oct_check_rcv_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_18__ }
%struct.TYPE_14__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%union.cvmx_gmxx_rxx_frm_ctl = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }

@OCTEON_FEATURE_PKND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Port %d unknown preamble, packet dropped\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Port %d receive error code %d, packet dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @cvm_oct_check_rcv_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_check_rcv_error(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cvmx_gmxx_rxx_frm_ctl, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %10 = load i32, i32* @OCTEON_FEATURE_PKND, align 4
  %11 = call i64 @octeon_has_feature(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 64
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %177

40:                                               ; preds = %33, %26
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %166

54:                                               ; preds = %47, %40
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @cvmx_helper_get_interface_num(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @cvmx_helper_get_interface_index_num(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %59, i32 %60)
  %62 = call i32 @cvmx_read_csr(i32 %61)
  %63 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %7 to i32*
  store i32 %62, i32* %63, align 8
  %64 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %7 to %struct.TYPE_20__*
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %165

68:                                               ; preds = %54
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @cvmx_phys_to_ptr(i32 %73)
  store i32* %74, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %88, %68
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %93

88:                                               ; preds = %83
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %75

93:                                               ; preds = %87, %75
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 213
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %99
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 5
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, %107
  store i32 %112, i32* %110, align 4
  br label %164

113:                                              ; preds = %93
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 15
  %117 = icmp eq i32 %116, 13
  br i1 %117, label %118, label %158

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %119
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, %127
  store i32 %132, i32* %130, align 4
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %154, %118
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %133
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 240
  %144 = ashr i32 %143, 4
  %145 = load i32*, i32** %8, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 15
  %149 = shl i32 %148, 4
  %150 = or i32 %144, %149
  %151 = load i32*, i32** %8, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %8, align 8
  br label %154

154:                                              ; preds = %140
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %133

157:                                              ; preds = %133
  br label %163

158:                                              ; preds = %113
  %159 = load i32, i32* %4, align 4
  %160 = call i32 (i8*, i32, ...) @printk_ratelimited(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %162 = call i32 @cvm_oct_free_work(%struct.TYPE_15__* %161)
  store i32 1, i32* %2, align 4
  br label %178

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %97
  br label %165

165:                                              ; preds = %164, %54
  br label %176

166:                                              ; preds = %47
  %167 = load i32, i32* %4, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, i32, ...) @printk_ratelimited(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %167, i32 %172)
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = call i32 @cvm_oct_free_work(%struct.TYPE_15__* %174)
  store i32 1, i32* %2, align 4
  br label %178

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %176, %39
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %166, %158
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_CTL(i32, i32) #1

declare dso_local i32* @cvmx_phys_to_ptr(i32) #1

declare dso_local i32 @printk_ratelimited(i8*, i32, ...) #1

declare dso_local i32 @cvm_oct_free_work(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
