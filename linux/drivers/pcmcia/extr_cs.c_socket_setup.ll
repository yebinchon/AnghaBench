; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, {}*, i32, %struct.TYPE_3__*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"setup\0A\00", align 1
@SS_DETECT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SS_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"voltage interrogation timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SS_CARDBUS = common dso_local global i32 0, align 4
@SS_CAP_CARDBUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cardbus cards are not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@SS_3VCARD = common dso_local global i32 0, align 4
@SS_XVCARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unsupported voltage key\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HOOK_POWER_PRE = common dso_local global i32 0, align 4
@vcc_settle = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"unable to apply power\0A\00", align 1
@HOOK_POWER_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32)* @socket_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_setup(%struct.pcmcia_socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 2
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %14, align 8
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %17 = call i32 %15(%struct.pcmcia_socket* %16, i32* %6)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SS_DETECT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %196

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 10
  %28 = call i32 @msleep(i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %55, %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %34 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %36, align 8
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %39 = call i32 %37(%struct.pcmcia_socket* %38, i32* %6)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SS_DETECT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %196

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SS_PENDING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %58

53:                                               ; preds = %47
  %54 = call i32 @msleep(i32 100)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %29

58:                                               ; preds = %52, %29
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SS_PENDING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %65 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %64, i32 0, i32 2
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ETIMEDOUT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %196

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SS_CARDBUS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %76 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SS_CAP_CARDBUS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %83 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %82, i32 0, i32 2
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %196

87:                                               ; preds = %74
  %88 = load i32, i32* @SOCKET_CARDBUS, align 4
  %89 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %90 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %100

93:                                               ; preds = %69
  %94 = load i32, i32* @SOCKET_CARDBUS, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %97 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %87
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @SS_3VCARD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %107 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 33, i32* %108, align 4
  %109 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %110 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 33, i32* %111, align 8
  br label %131

112:                                              ; preds = %100
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @SS_XVCARD, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %119 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 50, i32* %120, align 4
  %121 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %122 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 50, i32* %123, align 8
  br label %130

124:                                              ; preds = %112
  %125 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %126 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %125, i32 0, i32 2
  %127 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %196

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %105
  %132 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %133 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %132, i32 0, i32 1
  %134 = bitcast {}** %133 to i32 (%struct.pcmcia_socket*, i32)**
  %135 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %134, align 8
  %136 = icmp ne i32 (%struct.pcmcia_socket*, i32)* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %139 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %138, i32 0, i32 1
  %140 = bitcast {}** %139 to i32 (%struct.pcmcia_socket*, i32)**
  %141 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %140, align 8
  %142 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %143 = load i32, i32* @HOOK_POWER_PRE, align 4
  %144 = call i32 %141(%struct.pcmcia_socket* %142, i32 %143)
  br label %145

145:                                              ; preds = %137, %131
  %146 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %147 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %150 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %149, i32 0, i32 3
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)** %152, align 8
  %154 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %155 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %156 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %155, i32 0, i32 4
  %157 = call i32 %153(%struct.pcmcia_socket* %154, %struct.TYPE_4__* %156)
  %158 = load i32, i32* @vcc_settle, align 4
  %159 = mul nsw i32 %158, 10
  %160 = call i32 @msleep(i32 %159)
  %161 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %162 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %161, i32 0, i32 3
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %164, align 8
  %166 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %167 = call i32 %165(%struct.pcmcia_socket* %166, i32* %6)
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @SS_POWERON, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %145
  %173 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %174 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %173, i32 0, i32 2
  %175 = call i32 @dev_err(i32* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %196

178:                                              ; preds = %145
  %179 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %180 = call i32 @socket_reset(%struct.pcmcia_socket* %179)
  store i32 %180, i32* %6, align 4
  %181 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %182 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %181, i32 0, i32 1
  %183 = bitcast {}** %182 to i32 (%struct.pcmcia_socket*, i32)**
  %184 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %183, align 8
  %185 = icmp ne i32 (%struct.pcmcia_socket*, i32)* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %178
  %187 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %188 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %187, i32 0, i32 1
  %189 = bitcast {}** %188 to i32 (%struct.pcmcia_socket*, i32)**
  %190 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %189, align 8
  %191 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %192 = load i32, i32* @HOOK_POWER_POST, align 4
  %193 = call i32 %190(%struct.pcmcia_socket* %191, i32 %192)
  br label %194

194:                                              ; preds = %186, %178
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %194, %172, %124, %81, %63, %44, %22
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @socket_reset(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
