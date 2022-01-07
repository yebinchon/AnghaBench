; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_set_802_11_add_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_set_802_11_add_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.security_priv }
%struct.security_priv = type { i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.ndis_802_11_wep = type { i32, i32, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_module_rtl871x_ioctl_set_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"MgntActrtw_set_802_11_add_wep:keyid>4 =>fail\0A\00", align 1
@_WEP40_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"MgntActrtw_set_802_11_add_wep:wep->KeyLength =5\0A\00", align 1
@_WEP104_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"MgntActrtw_set_802_11_add_wep:wep->KeyLength = 13\0A\00", align 1
@_NO_PRIVACY_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"MgntActrtw_set_802_11_add_wep:wep->KeyLength!=5 or 13\0A\00", align 1
@.str.4 = private unnamed_addr constant [93 x i8] c"rtw_set_802_11_add_wep:before memcpy, wep->KeyLength = 0x%x wep->KeyIndex = 0x%x  keyid =%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"rtw_set_802_11_add_wep:security key material : %x %x %x %x %x %x %x %x %x %x %x %x %x\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_set_802_11_add_wep(%struct.adapter* %0, %struct.ndis_802_11_wep* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ndis_802_11_wep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.security_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.ndis_802_11_wep* %1, %struct.ndis_802_11_wep** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.security_priv* %10, %struct.security_priv** %7, align 8
  %11 = load i32, i32* @_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ndis_802_11_wep*, %struct.ndis_802_11_wep** %4, align 8
  %13 = getelementptr inbounds %struct.ndis_802_11_wep, %struct.ndis_802_11_wep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 1073741823
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %20 = load i32, i32* @_drv_err_, align 4
  %21 = call i32 @RT_TRACE(i32 %19, i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %231

22:                                               ; preds = %2
  %23 = load %struct.ndis_802_11_wep*, %struct.ndis_802_11_wep** %4, align 8
  %24 = getelementptr inbounds %struct.ndis_802_11_wep, %struct.ndis_802_11_wep* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %40 [
    i32 5, label %26
    i32 13, label %33
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @_WEP40_, align 4
  %28 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %29 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %31 = load i32, i32* @_drv_info_, align 4
  %32 = call i32 @RT_TRACE(i32 %30, i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %47

33:                                               ; preds = %22
  %34 = load i32, i32* @_WEP104_, align 4
  %35 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %36 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %38 = load i32, i32* @_drv_info_, align 4
  %39 = call i32 @RT_TRACE(i32 %37, i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %47

40:                                               ; preds = %22
  %41 = load i32, i32* @_NO_PRIVACY_, align 4
  %42 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %43 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %45 = load i32, i32* @_drv_info_, align 4
  %46 = call i32 @RT_TRACE(i32 %44, i32 %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %40, %33, %26
  %48 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %49 = load i32, i32* @_drv_info_, align 4
  %50 = load %struct.ndis_802_11_wep*, %struct.ndis_802_11_wep** %4, align 8
  %51 = getelementptr inbounds %struct.ndis_802_11_wep, %struct.ndis_802_11_wep* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ndis_802_11_wep*, %struct.ndis_802_11_wep** %4, align 8
  %54 = getelementptr inbounds %struct.ndis_802_11_wep, %struct.ndis_802_11_wep* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @RT_TRACE(i32 %48, i32 %49, i8* %58)
  %60 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %61 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load %struct.ndis_802_11_wep*, %struct.ndis_802_11_wep** %4, align 8
  %70 = getelementptr inbounds %struct.ndis_802_11_wep, %struct.ndis_802_11_wep* %69, i32 0, i32 2
  %71 = load %struct.ndis_802_11_wep*, %struct.ndis_802_11_wep** %4, align 8
  %72 = getelementptr inbounds %struct.ndis_802_11_wep, %struct.ndis_802_11_wep* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32* %68, i32* %70, i32 %73)
  %75 = load %struct.ndis_802_11_wep*, %struct.ndis_802_11_wep** %4, align 8
  %76 = getelementptr inbounds %struct.ndis_802_11_wep, %struct.ndis_802_11_wep* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %79 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %86 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %88 = load i32, i32* @_drv_info_, align 4
  %89 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %90 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %100 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %110 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %120 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %130 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %140 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 5
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %150 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %149, i32 0, i32 1
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 6
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %160 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %170 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %169, i32 0, i32 1
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 8
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %180 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %179, i32 0, i32 1
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 9
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %190 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %189, i32 0, i32 1
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 10
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %200 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %199, i32 0, i32 1
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 11
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %210 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %209, i32 0, i32 1
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 12
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @RT_TRACE(i32 %87, i32 %88, i8* %220)
  %222 = load %struct.adapter*, %struct.adapter** %3, align 8
  %223 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @rtw_set_key(%struct.adapter* %222, %struct.security_priv* %223, i32 %224, i32 1, i32 1)
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @_FAIL, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %47
  store i32 0, i32* %8, align 4
  br label %230

230:                                              ; preds = %229, %47
  br label %231

231:                                              ; preds = %230, %18
  %232 = load i32, i32* %8, align 4
  ret i32 %232
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtw_set_key(%struct.adapter*, %struct.security_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
