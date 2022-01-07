; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_parse_tag_65_packet.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_parse_tag_65_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_session_key = type { i64, i8* }
%struct.ecryptfs_message = type { i64, i8* }

@EIO = common dso_local global i32 0, align 4
@ECRYPTFS_TAG_65_PACKET_TYPE = common dso_local global i8 0, align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Type should be ECRYPTFS_TAG_65\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Status indicator has non-zero value [%d]\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Error parsing packet length; rc = [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"The message received from ecryptfsd is shorter than expected\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"The decrypted key is not long enough to include a cipher code and checksum\0A\00", align 1
@ECRYPTFS_MAX_KEY_BYTES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"key_size [%d] larger than the maximum key size [%d]\0A\00", align 1
@ECRYPTFS_MAX_ENCRYPTED_KEY_BYTES = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"Invalid checksum for file encryption  key; expected [%x]; calculated [%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecryptfs_session_key*, i8*, %struct.ecryptfs_message*)* @parse_tag_65_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tag_65_packet(%struct.ecryptfs_session_key* %0, i8* %1, %struct.ecryptfs_message* %2) #0 {
  %4 = alloca %struct.ecryptfs_session_key*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecryptfs_message*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.ecryptfs_session_key* %0, %struct.ecryptfs_session_key** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ecryptfs_message* %2, %struct.ecryptfs_message** %6, align 8
  store i64 0, i64* %7, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  %15 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %6, align 8
  %16 = getelementptr inbounds %struct.ecryptfs_message, %struct.ecryptfs_message* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %6, align 8
  %19 = getelementptr inbounds %struct.ecryptfs_message, %struct.ecryptfs_message* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  br label %193

26:                                               ; preds = %3
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %27, i64 %28
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @ECRYPTFS_TAG_65_PACKET_TYPE, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load i32, i32* @KERN_ERR, align 4
  %38 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %14, align 4
  br label %193

41:                                               ; preds = %26
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %43
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  br label %193

59:                                               ; preds = %41
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = call i32 @ecryptfs_parse_packet_length(i8* %62, i64* %10, i64* %9)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @KERN_WARNING, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %193

70:                                               ; preds = %59
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %75, %76
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load i32, i32* @KERN_ERR, align 4
  %81 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %80, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %14, align 4
  br label %193

84:                                               ; preds = %70
  %85 = load i64, i64* %10, align 8
  %86 = icmp ult i64 %85, 3
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %88, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %14, align 4
  br label %193

92:                                               ; preds = %84
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %7, align 8
  %96 = getelementptr inbounds i8, i8* %93, i64 %94
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %5, align 8
  store i8 %97, i8* %98, align 1
  %99 = load i64, i64* %10, align 8
  %100 = sub i64 %99, 3
  %101 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %4, align 8
  %102 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %4, align 8
  %104 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ECRYPTFS_MAX_KEY_BYTES, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %92
  %109 = load i32, i32* @KERN_ERR, align 4
  %110 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %4, align 8
  %111 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i8, i8* @ECRYPTFS_MAX_ENCRYPTED_KEY_BYTES, align 1
  %114 = zext i8 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %109, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %112, i32 %114)
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %14, align 4
  br label %193

118:                                              ; preds = %92
  %119 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %4, align 8
  %120 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i64, i64* %7, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %4, align 8
  %126 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i8
  %129 = call i32 @memcpy(i8* %121, i8* %124, i8 zeroext %128)
  %130 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %4, align 8
  %131 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %7, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %7, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %7, align 8
  %138 = getelementptr inbounds i8, i8* %135, i64 %136
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl i32 %140, 8
  %142 = load i8, i8* %13, align 1
  %143 = zext i8 %142 to i32
  %144 = add nsw i32 %143, %141
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %13, align 1
  %146 = load i8*, i8** %8, align 8
  %147 = load i64, i64* %7, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %7, align 8
  %149 = getelementptr inbounds i8, i8* %146, i64 %147
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* %13, align 1
  %153 = zext i8 %152 to i32
  %154 = add nsw i32 %153, %151
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %13, align 1
  store i64 0, i64* %7, align 8
  br label %156

156:                                              ; preds = %174, %118
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %4, align 8
  %159 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ult i64 %157, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %156
  %163 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %4, align 8
  %164 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i64, i64* %7, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load i8, i8* %12, align 1
  %171 = zext i8 %170 to i32
  %172 = add nsw i32 %171, %169
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %12, align 1
  br label %174

174:                                              ; preds = %162
  %175 = load i64, i64* %7, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %7, align 8
  br label %156

177:                                              ; preds = %156
  %178 = load i8, i8* %13, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8, i8* %12, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp ne i32 %179, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load i32, i32* @KERN_ERR, align 4
  %185 = load i8, i8* %13, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8, i8* %12, align 1
  %188 = zext i8 %187 to i32
  %189 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %184, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 %186, i32 %188)
  %190 = load i32, i32* @EIO, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %14, align 4
  br label %192

192:                                              ; preds = %183, %177
  br label %193

193:                                              ; preds = %192, %108, %87, %79, %66, %48, %36, %23
  %194 = load i32, i32* %14, align 4
  ret i32 %194
}

declare dso_local i32 @ecryptfs_printk(i32, i8*, ...) #1

declare dso_local i32 @ecryptfs_parse_packet_length(i8*, i64*, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
