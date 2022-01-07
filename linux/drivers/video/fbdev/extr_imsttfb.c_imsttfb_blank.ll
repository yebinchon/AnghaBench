; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_imsttfb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_imsttfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.imstt_par* }
%struct.imstt_par = type { i64, i32*, i32 }

@STGCTL = common dso_local global i32 0, align 4
@IBM = common dso_local global i64 0, align 8
@PIDXHI = common dso_local global i64 0, align 8
@MISCTL2 = common dso_local global i8* null, align 8
@PIDXLO = common dso_local global i64 0, align 8
@PIDXDATA = common dso_local global i64 0, align 8
@MISCTL1 = common dso_local global i8* null, align 8
@SYNCCTL = common dso_local global i8* null, align 8
@PWRMNGMT = common dso_local global i8* null, align 8
@CLKCTL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @imsttfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imsttfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.imstt_par*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.imstt_par*, %struct.imstt_par** %8, align 8
  store %struct.imstt_par* %9, %struct.imstt_par** %5, align 8
  %10 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %11 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @STGCTL, align 4
  %14 = call i32 @read_reg_le32(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %111

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %110 [
    i32 130, label %19
    i32 129, label %19
    i32 128, label %104
    i32 131, label %107
  ]

19:                                               ; preds = %17, %17
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, -897
  store i32 %21, i32* %6, align 4
  %22 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %23 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IBM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %103

27:                                               ; preds = %19
  %28 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %29 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @PIDXHI, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 0, i32* %32, align 4
  %33 = call i32 (...) @eieio()
  %34 = load i8*, i8** @MISCTL2, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %37 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @PIDXLO, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = call i32 (...) @eieio()
  %42 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %43 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @PIDXDATA, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 85, i32* %46, align 4
  %47 = call i32 (...) @eieio()
  %48 = load i8*, i8** @MISCTL1, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %51 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @PIDXLO, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = call i32 (...) @eieio()
  %56 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %57 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @PIDXDATA, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 17, i32* %60, align 4
  %61 = call i32 (...) @eieio()
  %62 = load i8*, i8** @SYNCCTL, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %65 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @PIDXLO, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = call i32 (...) @eieio()
  %70 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %71 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @PIDXDATA, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 15, i32* %74, align 4
  %75 = call i32 (...) @eieio()
  %76 = load i8*, i8** @PWRMNGMT, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %79 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @PIDXLO, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = call i32 (...) @eieio()
  %84 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %85 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @PIDXDATA, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 31, i32* %88, align 4
  %89 = call i32 (...) @eieio()
  %90 = load i8*, i8** @CLKCTL, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %93 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @PIDXLO, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = call i32 (...) @eieio()
  %98 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %99 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @PIDXDATA, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 192, i32* %102, align 4
  br label %103

103:                                              ; preds = %27, %19
  br label %110

104:                                              ; preds = %17
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, -33
  store i32 %106, i32* %6, align 4
  br label %110

107:                                              ; preds = %17
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, -17
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %17, %107, %104, %103
  br label %200

111:                                              ; preds = %2
  %112 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %113 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IBM, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %196

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, 6064
  store i32 %119, i32* %6, align 4
  %120 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %121 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @PIDXHI, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 0, i32* %124, align 4
  %125 = call i32 (...) @eieio()
  %126 = load i8*, i8** @CLKCTL, align 8
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %129 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @PIDXLO, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = call i32 (...) @eieio()
  %134 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %135 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @PIDXDATA, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32 1, i32* %138, align 4
  %139 = call i32 (...) @eieio()
  %140 = load i8*, i8** @PWRMNGMT, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %143 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @PIDXLO, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %141, i32* %146, align 4
  %147 = call i32 (...) @eieio()
  %148 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %149 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @PIDXDATA, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 0, i32* %152, align 4
  %153 = call i32 (...) @eieio()
  %154 = load i8*, i8** @SYNCCTL, align 8
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %157 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @PIDXLO, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = call i32 (...) @eieio()
  %162 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %163 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @PIDXDATA, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 0, i32* %166, align 4
  %167 = call i32 (...) @eieio()
  %168 = load i8*, i8** @MISCTL1, align 8
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %171 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @PIDXLO, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32 %169, i32* %174, align 4
  %175 = call i32 (...) @eieio()
  %176 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %177 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @PIDXDATA, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32 1, i32* %180, align 4
  %181 = call i32 (...) @eieio()
  %182 = load i8*, i8** @MISCTL2, align 8
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %185 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @PIDXLO, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 %183, i32* %188, align 4
  %189 = call i32 (...) @eieio()
  %190 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %191 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @PIDXDATA, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32 69, i32* %194, align 4
  %195 = call i32 (...) @eieio()
  br label %199

196:                                              ; preds = %111
  %197 = load i32, i32* %6, align 4
  %198 = or i32 %197, 6016
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %196, %117
  br label %200

200:                                              ; preds = %199, %110
  %201 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %202 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @STGCTL, align 4
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @write_reg_le32(i32 %203, i32 %204, i32 %205)
  ret i32 0
}

declare dso_local i32 @read_reg_le32(i32, i32) #1

declare dso_local i32 @eieio(...) #1

declare dso_local i32 @write_reg_le32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
