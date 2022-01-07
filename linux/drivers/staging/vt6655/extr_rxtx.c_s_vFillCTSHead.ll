; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_vFillCTSHead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_vFillCTSHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32 }
%struct.vnt_cts_fb = type { i32, %struct.TYPE_3__, i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.vnt_cts = type { i32, %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@PK_TYPE_11GB = common dso_local global i8 0, align 1
@PK_TYPE_11GA = common dso_local global i8 0, align 1
@AUTO_FB_NONE = common dso_local global i8 0, align 1
@TYPE_ATIMDMA = common dso_local global i32 0, align 4
@TYPE_BEACONDMA = common dso_local global i32 0, align 4
@PK_TYPE_11B = common dso_local global i32 0, align 4
@CTSDUR_BA = common dso_local global i32 0, align 4
@CTSDUR_BA_F0 = common dso_local global i32 0, align 4
@CTSDUR_BA_F1 = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*, i32, i8, i8*, i32, i32, i32, i16, i8)* @s_vFillCTSHead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_vFillCTSHead(%struct.vnt_private* %0, i32 %1, i8 zeroext %2, i8* %3, i32 %4, i32 %5, i32 %6, i16 zeroext %7, i8 zeroext %8) #0 {
  %10 = alloca %struct.vnt_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca %struct.vnt_cts_fb*, align 8
  %21 = alloca %struct.vnt_cts*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8 %2, i8* %12, align 1
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i16 %7, i16* %17, align 2
  store i8 %8, i8* %18, align 1
  store i32 14, i32* %19, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %9
  br label %168

25:                                               ; preds = %9
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %19, align 4
  %30 = sub i32 %29, 4
  store i32 %30, i32* %19, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i8, i8* %12, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @PK_TYPE_11GB, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i8, i8* %12, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @PK_TYPE_11GA, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %168

43:                                               ; preds = %37, %31
  %44 = load i8, i8* %18, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @AUTO_FB_NONE, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %122

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @TYPE_ATIMDMA, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %122

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @TYPE_BEACONDMA, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %122

57:                                               ; preds = %53
  %58 = load i8*, i8** %13, align 8
  %59 = bitcast i8* %58 to %struct.vnt_cts_fb*
  store %struct.vnt_cts_fb* %59, %struct.vnt_cts_fb** %20, align 8
  %60 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %61 = load i32, i32* %19, align 4
  %62 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %63 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PK_TYPE_11B, align 4
  %66 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %20, align 8
  %67 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %66, i32 0, i32 5
  %68 = call i32 @vnt_get_phy_field(%struct.vnt_private* %60, i32 %61, i32 %64, i32 %65, i32* %67)
  %69 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %70 = load i32, i32* @CTSDUR_BA, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i8, i8* %12, align 1
  %73 = load i16, i16* %17, align 2
  %74 = load i32, i32* %15, align 4
  %75 = load i8, i8* %18, align 1
  %76 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %69, i32 %70, i32 %71, i8 zeroext %72, i16 zeroext %73, i32 %74, i8 zeroext %75)
  %77 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %20, align 8
  %78 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %80 = load i32, i32* @CTSDUR_BA_F0, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i8, i8* %12, align 1
  %83 = load i16, i16* %17, align 2
  %84 = load i32, i32* %15, align 4
  %85 = load i8, i8* %18, align 1
  %86 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %79, i32 %80, i32 %81, i8 zeroext %82, i16 zeroext %83, i32 %84, i8 zeroext %85)
  %87 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %20, align 8
  %88 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %90 = load i32, i32* @CTSDUR_BA_F1, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i8, i8* %12, align 1
  %93 = load i16, i16* %17, align 2
  %94 = load i32, i32* %15, align 4
  %95 = load i8, i8* %18, align 1
  %96 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %89, i32 %90, i32 %91, i8 zeroext %92, i16 zeroext %93, i32 %94, i8 zeroext %95)
  %97 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %20, align 8
  %98 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %20, align 8
  %100 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %20, align 8
  %103 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %106 = load i32, i32* @IEEE80211_STYPE_CTS, align 4
  %107 = or i32 %105, %106
  %108 = call i8* @cpu_to_le16(i32 %107)
  %109 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %20, align 8
  %110 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  %112 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %20, align 8
  %113 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.vnt_cts_fb*, %struct.vnt_cts_fb** %20, align 8
  %115 = getelementptr inbounds %struct.vnt_cts_fb, %struct.vnt_cts_fb* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %119 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ether_addr_copy(i32 %117, i32 %120)
  br label %167

122:                                              ; preds = %53, %49, %43
  %123 = load i8*, i8** %13, align 8
  %124 = bitcast i8* %123 to %struct.vnt_cts*
  store %struct.vnt_cts* %124, %struct.vnt_cts** %21, align 8
  %125 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %126 = load i32, i32* %19, align 4
  %127 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %128 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PK_TYPE_11B, align 4
  %131 = load %struct.vnt_cts*, %struct.vnt_cts** %21, align 8
  %132 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %131, i32 0, i32 3
  %133 = call i32 @vnt_get_phy_field(%struct.vnt_private* %125, i32 %126, i32 %129, i32 %130, i32* %132)
  %134 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %135 = load i32, i32* @CTSDUR_BA, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i8, i8* %12, align 1
  %138 = load i16, i16* %17, align 2
  %139 = load i32, i32* %15, align 4
  %140 = load i8, i8* %18, align 1
  %141 = call i8* @s_uGetRTSCTSDuration(%struct.vnt_private* %134, i32 %135, i32 %136, i8 zeroext %137, i16 zeroext %138, i32 %139, i8 zeroext %140)
  %142 = load %struct.vnt_cts*, %struct.vnt_cts** %21, align 8
  %143 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  %144 = load %struct.vnt_cts*, %struct.vnt_cts** %21, align 8
  %145 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.vnt_cts*, %struct.vnt_cts** %21, align 8
  %148 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  store i8* %146, i8** %149, align 8
  %150 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %151 = load i32, i32* @IEEE80211_STYPE_CTS, align 4
  %152 = or i32 %150, %151
  %153 = call i8* @cpu_to_le16(i32 %152)
  %154 = load %struct.vnt_cts*, %struct.vnt_cts** %21, align 8
  %155 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i8* %153, i8** %156, align 8
  %157 = load %struct.vnt_cts*, %struct.vnt_cts** %21, align 8
  %158 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = load %struct.vnt_cts*, %struct.vnt_cts** %21, align 8
  %160 = getelementptr inbounds %struct.vnt_cts, %struct.vnt_cts* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.vnt_private*, %struct.vnt_private** %10, align 8
  %164 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ether_addr_copy(i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %122, %57
  br label %168

168:                                              ; preds = %24, %167, %37
  ret void
}

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, i32*) #1

declare dso_local i8* @s_uGetRTSCTSDuration(%struct.vnt_private*, i32, i32, i8 zeroext, i16 zeroext, i32, i8 zeroext) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
