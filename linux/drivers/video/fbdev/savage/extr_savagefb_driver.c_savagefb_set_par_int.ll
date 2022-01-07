; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_set_par_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_set_par_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { i64, i32 (%struct.savagefb_par*)* }
%struct.savage_reg = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8*, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"savagefb_set_par_int\00", align 1
@S3_SAVAGE_MX = common dso_local global i64 0, align 8
@S3_SAVAGE4 = common dso_local global i64 0, align 8
@FIFO_CONTROL_REG = common dso_local global i32 0, align 4
@MIU_CONTROL_REG = common dso_local global i32 0, align 4
@STREAMS_TIMEOUT_REG = common dso_local global i32 0, align 4
@MISC_TIMEOUT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savagefb_par*, %struct.savage_reg*)* @savagefb_set_par_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savagefb_set_par_int(%struct.savagefb_par* %0, %struct.savage_reg* %1) #0 {
  %3 = alloca %struct.savagefb_par*, align 8
  %4 = alloca %struct.savage_reg*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.savagefb_par* %0, %struct.savagefb_par** %3, align 8
  store %struct.savage_reg* %1, %struct.savage_reg** %4, align 8
  %10 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %12 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %11, i32 0, i32 1
  %13 = load i32 (%struct.savagefb_par*)*, i32 (%struct.savagefb_par*)** %12, align 8
  %14 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %15 = call i32 %13(%struct.savagefb_par* %14)
  %16 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %17 = call i32 @vga_out8(i32 962, i8 zeroext 35, %struct.savagefb_par* %16)
  %18 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %19 = call i32 @vga_out16(i32 980, i32 18488, %struct.savagefb_par* %18)
  %20 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %21 = call i32 @vga_out16(i32 980, i32 42297, %struct.savagefb_par* %20)
  %22 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %23 = call i32 @vga_out16(i32 964, i32 1544, %struct.savagefb_par* %22)
  %24 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %25 = call i32 @vgaHWProtect(%struct.savagefb_par* %24, i32 1)
  %26 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %27 = call i32 @VerticalRetraceWait(%struct.savagefb_par* %26)
  %28 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %29 = call i32 @vga_out8(i32 980, i8 zeroext 103, %struct.savagefb_par* %28)
  %30 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %31 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %30)
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %8, align 1
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, -13
  %36 = trunc i32 %35 to i8
  %37 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %38 = call i32 @vga_out8(i32 981, i8 zeroext %36, %struct.savagefb_par* %37)
  %39 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %40 = call i32 @vga_out8(i32 980, i8 zeroext 35, %struct.savagefb_par* %39)
  %41 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %42 = call i32 @vga_out8(i32 981, i8 zeroext 0, %struct.savagefb_par* %41)
  %43 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %44 = call i32 @vga_out8(i32 980, i8 zeroext 38, %struct.savagefb_par* %43)
  %45 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %46 = call i32 @vga_out8(i32 981, i8 zeroext 0, %struct.savagefb_par* %45)
  %47 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %48 = call i32 @vga_out8(i32 980, i8 zeroext 102, %struct.savagefb_par* %47)
  %49 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %50 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 8
  %52 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %53 = call i32 @vga_out8(i32 981, i8 zeroext %51, %struct.savagefb_par* %52)
  %54 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %55 = call i32 @vga_out8(i32 980, i8 zeroext 58, %struct.savagefb_par* %54)
  %56 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %57 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 1
  %59 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %60 = call i32 @vga_out8(i32 981, i8 zeroext %58, %struct.savagefb_par* %59)
  %61 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %62 = call i32 @vga_out8(i32 980, i8 zeroext 49, %struct.savagefb_par* %61)
  %63 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %64 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %63, i32 0, i32 2
  %65 = load i8, i8* %64, align 2
  %66 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %67 = call i32 @vga_out8(i32 981, i8 zeroext %65, %struct.savagefb_par* %66)
  %68 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %69 = call i32 @vga_out8(i32 980, i8 zeroext 50, %struct.savagefb_par* %68)
  %70 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %71 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %70, i32 0, i32 3
  %72 = load i8, i8* %71, align 1
  %73 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %74 = call i32 @vga_out8(i32 981, i8 zeroext %72, %struct.savagefb_par* %73)
  %75 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %76 = call i32 @vga_out8(i32 980, i8 zeroext 88, %struct.savagefb_par* %75)
  %77 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %78 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %77, i32 0, i32 4
  %79 = load i8, i8* %78, align 4
  %80 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %81 = call i32 @vga_out8(i32 981, i8 zeroext %79, %struct.savagefb_par* %80)
  %82 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %83 = call i32 @vga_out8(i32 980, i8 zeroext 83, %struct.savagefb_par* %82)
  %84 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %85 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 127
  %88 = trunc i32 %87 to i8
  %89 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %90 = call i32 @vga_out8(i32 981, i8 zeroext %88, %struct.savagefb_par* %89)
  %91 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %92 = call i32 @vga_out16(i32 964, i32 1544, %struct.savagefb_par* %91)
  %93 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %94 = call i32 @vga_out8(i32 964, i8 zeroext 14, %struct.savagefb_par* %93)
  %95 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %96 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %95, i32 0, i32 6
  %97 = load i8, i8* %96, align 4
  %98 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %99 = call i32 @vga_out8(i32 965, i8 zeroext %97, %struct.savagefb_par* %98)
  %100 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %101 = call i32 @vga_out8(i32 964, i8 zeroext 15, %struct.savagefb_par* %100)
  %102 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %103 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %102, i32 0, i32 7
  %104 = load i8, i8* %103, align 1
  %105 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %106 = call i32 @vga_out8(i32 965, i8 zeroext %104, %struct.savagefb_par* %105)
  %107 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %108 = call i32 @vga_out8(i32 964, i8 zeroext 41, %struct.savagefb_par* %107)
  %109 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %110 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %109, i32 0, i32 8
  %111 = load i8, i8* %110, align 2
  %112 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %113 = call i32 @vga_out8(i32 965, i8 zeroext %111, %struct.savagefb_par* %112)
  %114 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %115 = call i32 @vga_out8(i32 964, i8 zeroext 21, %struct.savagefb_par* %114)
  %116 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %117 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %116, i32 0, i32 9
  %118 = load i8, i8* %117, align 1
  %119 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %120 = call i32 @vga_out8(i32 965, i8 zeroext %118, %struct.savagefb_par* %119)
  %121 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %122 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @S3_SAVAGE_MX, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %2
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %145, %126
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 8
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 84, %131
  %133 = trunc i32 %132 to i8
  %134 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %135 = call i32 @vga_out8(i32 964, i8 zeroext %133, %struct.savagefb_par* %134)
  %136 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %137 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %136, i32 0, i32 10
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %144 = call i32 @vga_out8(i32 965, i8 zeroext %142, %struct.savagefb_par* %143)
  br label %145

145:                                              ; preds = %130
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %127

148:                                              ; preds = %127
  br label %149

149:                                              ; preds = %148, %2
  %150 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %151 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %152 = call i32 @vgaHWRestore(%struct.savagefb_par* %150, %struct.savage_reg* %151)
  %153 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %154 = call i32 @vga_out8(i32 980, i8 zeroext 83, %struct.savagefb_par* %153)
  %155 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %156 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = trunc i32 %157 to i8
  %159 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %160 = call i32 @vga_out8(i32 981, i8 zeroext %158, %struct.savagefb_par* %159)
  %161 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %162 = call i32 @vga_out8(i32 980, i8 zeroext 93, %struct.savagefb_par* %161)
  %163 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %164 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %163, i32 0, i32 11
  %165 = load i8, i8* %164, align 8
  %166 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %167 = call i32 @vga_out8(i32 981, i8 zeroext %165, %struct.savagefb_par* %166)
  %168 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %169 = call i32 @vga_out8(i32 980, i8 zeroext 94, %struct.savagefb_par* %168)
  %170 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %171 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %170, i32 0, i32 12
  %172 = load i8, i8* %171, align 1
  %173 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %174 = call i32 @vga_out8(i32 981, i8 zeroext %172, %struct.savagefb_par* %173)
  %175 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %176 = call i32 @vga_out8(i32 980, i8 zeroext 59, %struct.savagefb_par* %175)
  %177 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %178 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %177, i32 0, i32 13
  %179 = load i8, i8* %178, align 2
  %180 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %181 = call i32 @vga_out8(i32 981, i8 zeroext %179, %struct.savagefb_par* %180)
  %182 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %183 = call i32 @vga_out8(i32 980, i8 zeroext 60, %struct.savagefb_par* %182)
  %184 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %185 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %184, i32 0, i32 14
  %186 = load i8, i8* %185, align 1
  %187 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %188 = call i32 @vga_out8(i32 981, i8 zeroext %186, %struct.savagefb_par* %187)
  %189 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %190 = call i32 @vga_out8(i32 980, i8 zeroext 67, %struct.savagefb_par* %189)
  %191 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %192 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %191, i32 0, i32 15
  %193 = load i8, i8* %192, align 4
  %194 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %195 = call i32 @vga_out8(i32 981, i8 zeroext %193, %struct.savagefb_par* %194)
  %196 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %197 = call i32 @vga_out8(i32 980, i8 zeroext 101, %struct.savagefb_par* %196)
  %198 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %199 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %198, i32 0, i32 16
  %200 = load i8, i8* %199, align 1
  %201 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %202 = call i32 @vga_out8(i32 981, i8 zeroext %200, %struct.savagefb_par* %201)
  %203 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %204 = call i32 @vga_out8(i32 980, i8 zeroext 103, %struct.savagefb_par* %203)
  %205 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %206 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %205)
  %207 = and i32 %206, 15
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %8, align 1
  %209 = load i8, i8* %8, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 80, %210
  %212 = trunc i32 %211 to i8
  %213 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %214 = call i32 @vga_out8(i32 981, i8 zeroext %212, %struct.savagefb_par* %213)
  %215 = call i32 @mdelay(i32 10)
  %216 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %217 = call i32 @vga_out8(i32 980, i8 zeroext 103, %struct.savagefb_par* %216)
  %218 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %219 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %218, i32 0, i32 17
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %220, -13
  %222 = trunc i32 %221 to i8
  %223 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %224 = call i32 @vga_out8(i32 981, i8 zeroext %222, %struct.savagefb_par* %223)
  %225 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %226 = call i32 @vga_out8(i32 980, i8 zeroext 52, %struct.savagefb_par* %225)
  %227 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %228 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %227, i32 0, i32 18
  %229 = load i8, i8* %228, align 4
  %230 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %231 = call i32 @vga_out8(i32 981, i8 zeroext %229, %struct.savagefb_par* %230)
  %232 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %233 = call i32 @vga_out8(i32 980, i8 zeroext 64, %struct.savagefb_par* %232)
  %234 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %235 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %234, i32 0, i32 19
  %236 = load i8, i8* %235, align 1
  %237 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %238 = call i32 @vga_out8(i32 981, i8 zeroext %236, %struct.savagefb_par* %237)
  %239 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %240 = call i32 @vga_out8(i32 980, i8 zeroext 66, %struct.savagefb_par* %239)
  %241 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %242 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %241, i32 0, i32 20
  %243 = load i8, i8* %242, align 2
  %244 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %245 = call i32 @vga_out8(i32 981, i8 zeroext %243, %struct.savagefb_par* %244)
  %246 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %247 = call i32 @vga_out8(i32 980, i8 zeroext 69, %struct.savagefb_par* %246)
  %248 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %249 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %248, i32 0, i32 21
  %250 = load i8, i8* %249, align 1
  %251 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %252 = call i32 @vga_out8(i32 981, i8 zeroext %250, %struct.savagefb_par* %251)
  %253 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %254 = call i32 @vga_out8(i32 980, i8 zeroext 80, %struct.savagefb_par* %253)
  %255 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %256 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %255, i32 0, i32 22
  %257 = load i8, i8* %256, align 8
  %258 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %259 = call i32 @vga_out8(i32 981, i8 zeroext %257, %struct.savagefb_par* %258)
  %260 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %261 = call i32 @vga_out8(i32 980, i8 zeroext 81, %struct.savagefb_par* %260)
  %262 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %263 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %262, i32 0, i32 23
  %264 = load i8, i8* %263, align 1
  %265 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %266 = call i32 @vga_out8(i32 981, i8 zeroext %264, %struct.savagefb_par* %265)
  %267 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %268 = call i32 @vga_out8(i32 980, i8 zeroext 54, %struct.savagefb_par* %267)
  %269 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %270 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %269, i32 0, i32 24
  %271 = load i8, i8* %270, align 2
  %272 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %273 = call i32 @vga_out8(i32 981, i8 zeroext %271, %struct.savagefb_par* %272)
  %274 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %275 = call i32 @vga_out8(i32 980, i8 zeroext 96, %struct.savagefb_par* %274)
  %276 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %277 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %276, i32 0, i32 25
  %278 = load i8, i8* %277, align 1
  %279 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %280 = call i32 @vga_out8(i32 981, i8 zeroext %278, %struct.savagefb_par* %279)
  %281 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %282 = call i32 @vga_out8(i32 980, i8 zeroext 104, %struct.savagefb_par* %281)
  %283 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %284 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %283, i32 0, i32 26
  %285 = load i8, i8* %284, align 4
  %286 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %287 = call i32 @vga_out8(i32 981, i8 zeroext %285, %struct.savagefb_par* %286)
  %288 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %289 = call i32 @vga_out8(i32 980, i8 zeroext 105, %struct.savagefb_par* %288)
  %290 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %291 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %290, i32 0, i32 27
  %292 = load i8, i8* %291, align 1
  %293 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %294 = call i32 @vga_out8(i32 981, i8 zeroext %292, %struct.savagefb_par* %293)
  %295 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %296 = call i32 @vga_out8(i32 980, i8 zeroext 111, %struct.savagefb_par* %295)
  %297 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %298 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %297, i32 0, i32 28
  %299 = load i8, i8* %298, align 2
  %300 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %301 = call i32 @vga_out8(i32 981, i8 zeroext %299, %struct.savagefb_par* %300)
  %302 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %303 = call i32 @vga_out8(i32 980, i8 zeroext 51, %struct.savagefb_par* %302)
  %304 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %305 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %304, i32 0, i32 29
  %306 = load i8, i8* %305, align 1
  %307 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %308 = call i32 @vga_out8(i32 981, i8 zeroext %306, %struct.savagefb_par* %307)
  %309 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %310 = call i32 @vga_out8(i32 980, i8 zeroext -122, %struct.savagefb_par* %309)
  %311 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %312 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %311, i32 0, i32 30
  %313 = load i8, i8* %312, align 8
  %314 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %315 = call i32 @vga_out8(i32 981, i8 zeroext %313, %struct.savagefb_par* %314)
  %316 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %317 = call i32 @vga_out8(i32 980, i8 zeroext -120, %struct.savagefb_par* %316)
  %318 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %319 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %318, i32 0, i32 31
  %320 = load i8, i8* %319, align 1
  %321 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %322 = call i32 @vga_out8(i32 981, i8 zeroext %320, %struct.savagefb_par* %321)
  %323 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %324 = call i32 @vga_out8(i32 980, i8 zeroext -112, %struct.savagefb_par* %323)
  %325 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %326 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %325, i32 0, i32 32
  %327 = load i8, i8* %326, align 2
  %328 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %329 = call i32 @vga_out8(i32 981, i8 zeroext %327, %struct.savagefb_par* %328)
  %330 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %331 = call i32 @vga_out8(i32 980, i8 zeroext -111, %struct.savagefb_par* %330)
  %332 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %333 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %332, i32 0, i32 33
  %334 = load i8, i8* %333, align 1
  %335 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %336 = call i32 @vga_out8(i32 981, i8 zeroext %334, %struct.savagefb_par* %335)
  %337 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %338 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @S3_SAVAGE4, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %350

342:                                              ; preds = %149
  %343 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %344 = call i32 @vga_out8(i32 980, i8 zeroext -80, %struct.savagefb_par* %343)
  %345 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %346 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %345, i32 0, i32 34
  %347 = load i8, i8* %346, align 4
  %348 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %349 = call i32 @vga_out8(i32 981, i8 zeroext %347, %struct.savagefb_par* %348)
  br label %350

350:                                              ; preds = %342, %149
  %351 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %352 = call i32 @vga_out8(i32 980, i8 zeroext 50, %struct.savagefb_par* %351)
  %353 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %354 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %353, i32 0, i32 3
  %355 = load i8, i8* %354, align 1
  %356 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %357 = call i32 @vga_out8(i32 981, i8 zeroext %355, %struct.savagefb_par* %356)
  %358 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %359 = call i32 @vga_out8(i32 964, i8 zeroext 8, %struct.savagefb_par* %358)
  %360 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %361 = call i32 @vga_out8(i32 965, i8 zeroext 6, %struct.savagefb_par* %360)
  %362 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %363 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %362, i32 0, i32 35
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 255
  br i1 %365, label %366, label %382

366:                                              ; preds = %350
  %367 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %368 = call i32 @vga_out8(i32 964, i8 zeroext 16, %struct.savagefb_par* %367)
  %369 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %370 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %369, i32 0, i32 35
  %371 = load i32, i32* %370, align 8
  %372 = trunc i32 %371 to i8
  %373 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %374 = call i32 @vga_out8(i32 965, i8 zeroext %372, %struct.savagefb_par* %373)
  %375 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %376 = call i32 @vga_out8(i32 964, i8 zeroext 17, %struct.savagefb_par* %375)
  %377 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %378 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %377, i32 0, i32 36
  %379 = load i8, i8* %378, align 4
  %380 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %381 = call i32 @vga_out8(i32 965, i8 zeroext %379, %struct.savagefb_par* %380)
  br label %382

382:                                              ; preds = %366, %350
  %383 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %384 = call i32 @vga_out8(i32 964, i8 zeroext 14, %struct.savagefb_par* %383)
  %385 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %386 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %385, i32 0, i32 6
  %387 = load i8, i8* %386, align 4
  %388 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %389 = call i32 @vga_out8(i32 965, i8 zeroext %387, %struct.savagefb_par* %388)
  %390 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %391 = call i32 @vga_out8(i32 964, i8 zeroext 15, %struct.savagefb_par* %390)
  %392 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %393 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %392, i32 0, i32 7
  %394 = load i8, i8* %393, align 1
  %395 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %396 = call i32 @vga_out8(i32 965, i8 zeroext %394, %struct.savagefb_par* %395)
  %397 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %398 = call i32 @vga_out8(i32 964, i8 zeroext 18, %struct.savagefb_par* %397)
  %399 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %400 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %399, i32 0, i32 37
  %401 = load i8, i8* %400, align 1
  %402 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %403 = call i32 @vga_out8(i32 965, i8 zeroext %401, %struct.savagefb_par* %402)
  %404 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %405 = call i32 @vga_out8(i32 964, i8 zeroext 19, %struct.savagefb_par* %404)
  %406 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %407 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %406, i32 0, i32 38
  %408 = load i8, i8* %407, align 2
  %409 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %410 = call i32 @vga_out8(i32 965, i8 zeroext %408, %struct.savagefb_par* %409)
  %411 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %412 = call i32 @vga_out8(i32 964, i8 zeroext 41, %struct.savagefb_par* %411)
  %413 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %414 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %413, i32 0, i32 8
  %415 = load i8, i8* %414, align 2
  %416 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %417 = call i32 @vga_out8(i32 965, i8 zeroext %415, %struct.savagefb_par* %416)
  %418 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %419 = call i32 @vga_out8(i32 964, i8 zeroext 24, %struct.savagefb_par* %418)
  %420 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %421 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %420, i32 0, i32 39
  %422 = load i8, i8* %421, align 1
  %423 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %424 = call i32 @vga_out8(i32 965, i8 zeroext %422, %struct.savagefb_par* %423)
  %425 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %426 = call i32 @vga_out8(i32 964, i8 zeroext 21, %struct.savagefb_par* %425)
  %427 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %428 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %427)
  %429 = and i32 %428, -34
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %5, align 1
  %431 = load i8, i8* %5, align 1
  %432 = zext i8 %431 to i32
  %433 = or i32 %432, 3
  %434 = trunc i32 %433 to i8
  %435 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %436 = call i32 @vga_out8(i32 965, i8 zeroext %434, %struct.savagefb_par* %435)
  %437 = load i8, i8* %5, align 1
  %438 = zext i8 %437 to i32
  %439 = or i32 %438, 35
  %440 = trunc i32 %439 to i8
  %441 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %442 = call i32 @vga_out8(i32 965, i8 zeroext %440, %struct.savagefb_par* %441)
  %443 = load i8, i8* %5, align 1
  %444 = zext i8 %443 to i32
  %445 = or i32 %444, 3
  %446 = trunc i32 %445 to i8
  %447 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %448 = call i32 @vga_out8(i32 965, i8 zeroext %446, %struct.savagefb_par* %447)
  %449 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %450 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %449, i32 0, i32 9
  %451 = load i8, i8* %450, align 1
  %452 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %453 = call i32 @vga_out8(i32 965, i8 zeroext %451, %struct.savagefb_par* %452)
  %454 = call i32 @udelay(i32 100)
  %455 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %456 = call i32 @vga_out8(i32 964, i8 zeroext 48, %struct.savagefb_par* %455)
  %457 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %458 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %457, i32 0, i32 40
  %459 = load i8, i8* %458, align 8
  %460 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %461 = call i32 @vga_out8(i32 965, i8 zeroext %459, %struct.savagefb_par* %460)
  %462 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %463 = call i32 @vga_out8(i32 964, i8 zeroext 8, %struct.savagefb_par* %462)
  %464 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %465 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %464, i32 0, i32 41
  %466 = load i8, i8* %465, align 1
  %467 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %468 = call i32 @vga_out8(i32 965, i8 zeroext %466, %struct.savagefb_par* %467)
  %469 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %470 = call i32 @VerticalRetraceWait(%struct.savagefb_par* %469)
  %471 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %472 = call i32 @vga_out8(i32 980, i8 zeroext 103, %struct.savagefb_par* %471)
  %473 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %474 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %473, i32 0, i32 17
  %475 = load i32, i32* %474, align 8
  %476 = trunc i32 %475 to i8
  %477 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %478 = call i32 @vga_out8(i32 981, i8 zeroext %476, %struct.savagefb_par* %477)
  %479 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %480 = call i32 @vga_out8(i32 980, i8 zeroext 102, %struct.savagefb_par* %479)
  %481 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %482 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %481)
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %7, align 1
  %484 = load i8, i8* %7, align 1
  %485 = zext i8 %484 to i32
  %486 = or i32 %485, 128
  %487 = trunc i32 %486 to i8
  %488 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %489 = call i32 @vga_out8(i32 981, i8 zeroext %487, %struct.savagefb_par* %488)
  %490 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %491 = call i32 @vga_out8(i32 980, i8 zeroext 58, %struct.savagefb_par* %490)
  %492 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %493 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %492)
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %6, align 1
  %495 = load i8, i8* %6, align 1
  %496 = zext i8 %495 to i32
  %497 = or i32 %496, 128
  %498 = trunc i32 %497 to i8
  %499 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %500 = call i32 @vga_out8(i32 981, i8 zeroext %498, %struct.savagefb_par* %499)
  %501 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %502 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @S3_SAVAGE_MX, align 8
  %505 = icmp ne i64 %503, %504
  br i1 %505, label %506, label %548

506:                                              ; preds = %382
  %507 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %508 = call i32 @VerticalRetraceWait(%struct.savagefb_par* %507)
  %509 = load i32, i32* @FIFO_CONTROL_REG, align 4
  %510 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %511 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %510, i32 0, i32 45
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %514 = call i32 @savage_out32(i32 %509, i32 %512, %struct.savagefb_par* %513)
  %515 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %516 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %515, i32 0, i32 1
  %517 = load i32 (%struct.savagefb_par*)*, i32 (%struct.savagefb_par*)** %516, align 8
  %518 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %519 = call i32 %517(%struct.savagefb_par* %518)
  %520 = load i32, i32* @MIU_CONTROL_REG, align 4
  %521 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %522 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %521, i32 0, i32 44
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %525 = call i32 @savage_out32(i32 %520, i32 %523, %struct.savagefb_par* %524)
  %526 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %527 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %526, i32 0, i32 1
  %528 = load i32 (%struct.savagefb_par*)*, i32 (%struct.savagefb_par*)** %527, align 8
  %529 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %530 = call i32 %528(%struct.savagefb_par* %529)
  %531 = load i32, i32* @STREAMS_TIMEOUT_REG, align 4
  %532 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %533 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %532, i32 0, i32 43
  %534 = load i32, i32* %533, align 8
  %535 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %536 = call i32 @savage_out32(i32 %531, i32 %534, %struct.savagefb_par* %535)
  %537 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %538 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %537, i32 0, i32 1
  %539 = load i32 (%struct.savagefb_par*)*, i32 (%struct.savagefb_par*)** %538, align 8
  %540 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %541 = call i32 %539(%struct.savagefb_par* %540)
  %542 = load i32, i32* @MISC_TIMEOUT_REG, align 4
  %543 = load %struct.savage_reg*, %struct.savage_reg** %4, align 8
  %544 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %543, i32 0, i32 42
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %547 = call i32 @savage_out32(i32 %542, i32 %545, %struct.savagefb_par* %546)
  br label %548

548:                                              ; preds = %506, %382
  %549 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %550 = call i32 @vga_out8(i32 980, i8 zeroext 102, %struct.savagefb_par* %549)
  %551 = load i8, i8* %7, align 1
  %552 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %553 = call i32 @vga_out8(i32 981, i8 zeroext %551, %struct.savagefb_par* %552)
  %554 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %555 = call i32 @vga_out8(i32 980, i8 zeroext 58, %struct.savagefb_par* %554)
  %556 = load i8, i8* %6, align 1
  %557 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %558 = call i32 @vga_out8(i32 981, i8 zeroext %556, %struct.savagefb_par* %557)
  %559 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %560 = call i32 @SavageSetup2DEngine(%struct.savagefb_par* %559)
  %561 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %562 = call i32 @vgaHWProtect(%struct.savagefb_par* %561, i32 0)
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @vga_out8(i32, i8 zeroext, %struct.savagefb_par*) #1

declare dso_local i32 @vga_out16(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @vgaHWProtect(%struct.savagefb_par*, i32) #1

declare dso_local i32 @VerticalRetraceWait(%struct.savagefb_par*) #1

declare dso_local i32 @vga_in8(i32, %struct.savagefb_par*) #1

declare dso_local i32 @vgaHWRestore(%struct.savagefb_par*, %struct.savage_reg*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @savage_out32(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @SavageSetup2DEngine(%struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
