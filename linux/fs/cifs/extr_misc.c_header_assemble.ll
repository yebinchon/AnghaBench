; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_header_assemble.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_header_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.smb_hdr = type { i32*, i8, i32, i8, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.cifs_tcon = type { i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }

@SMBFLG2_KNOWS_LONG_NAMES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@CAP_UNICODE = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@CAP_STATUS32 = common dso_local global i32 0, align 4
@SMBFLG2_ERR_STATUS = common dso_local global i32 0, align 4
@SMB_SHARE_IS_IN_DFS = common dso_local global i32 0, align 4
@SMBFLG2_DFS = common dso_local global i32 0, align 4
@SMBFLG_CASELESS = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @header_assemble(%struct.smb_hdr* %0, i8 signext %1, %struct.cifs_tcon* %2, i32 %3) #0 {
  %5 = alloca %struct.smb_hdr*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.smb_hdr* %0, %struct.smb_hdr** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.cifs_tcon* %2, %struct.cifs_tcon** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %11 = bitcast %struct.smb_hdr* %10 to i8*
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i32 @memset(i8* %12, i32 0, i32 256)
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 64
  %18 = sub i64 %17, 4
  %19 = add i64 %18, 2
  %20 = trunc i64 %19 to i32
  %21 = call i32 @cpu_to_be32(i32 %20)
  %22 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 8
  %24 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 255, i32* %27, align 4
  %28 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 83, i32* %31, align 4
  %32 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 77, i32* %35, align 4
  %36 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 66, i32* %39, align 4
  %40 = load i8, i8* %6, align 1
  %41 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %41, i32 0, i32 1
  store i8 %40, i8* %42, align 8
  %43 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %43, i32 0, i32 2
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @SMBFLG2_KNOWS_LONG_NAMES, align 4
  %46 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %47 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 16
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %60 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  %61 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %62 = icmp ne %struct.cifs_tcon* %61, null
  br i1 %62, label %63, label %172

63:                                               ; preds = %4
  %64 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %65 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %68 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %70 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %119

73:                                               ; preds = %63
  %74 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %75 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CAP_UNICODE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %84 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %85 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %73
  %89 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %90 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CAP_STATUS32, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load i32, i32* @SMBFLG2_ERR_STATUS, align 4
  %99 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %100 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %88
  %104 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %105 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %110 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  %111 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %112 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = call i32 @get_next_mid(%struct.TYPE_5__* %115)
  %117 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %118 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %103, %63
  %120 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %121 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SMB_SHARE_IS_IN_DFS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load i32, i32* @SMBFLG2_DFS, align 4
  %128 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %129 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %119
  %133 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %134 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* @SMBFLG_CASELESS, align 4
  %139 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %140 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %132
  %144 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %145 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = icmp ne %struct.TYPE_4__* %146, null
  br i1 %147, label %148, label %171

148:                                              ; preds = %143
  %149 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %150 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = icmp ne %struct.TYPE_5__* %153, null
  br i1 %154, label %155, label %171

155:                                              ; preds = %148
  %156 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %157 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %155
  %165 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %166 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %167 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %155
  br label %171

171:                                              ; preds = %170, %148, %143
  br label %172

172:                                              ; preds = %171, %4
  %173 = load i32, i32* %8, align 4
  %174 = trunc i32 %173 to i8
  %175 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %176 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %175, i32 0, i32 3
  store i8 %174, i8* %176, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @get_next_mid(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
